import os
import copy
from pathlib import Path
import json
import numpy as np
import matplotlib.pyplot as plt
from tqdm import tqdm

import tensorflow as tf
from tensorflow.keras import layers
from tensorflow.keras.models import Model, Sequential

import hls4ml
from hls4ml.converters.keras_to_hls import parse_default_keras_layer
from hls4ml.model.attributes import ConfigurableAttribute, TypeAttribute
from hls4ml.model.types import FixedPrecisionType, RoundingMode, SaturationMode
from hls4ml.model.attributes import Attribute

import h5py

import qkeras as qk
from qkeras.estimate import print_qstats
from qkeras.utils import model_quantize
from qkeras.utils import quantized_model_dump
from qkeras import QActivation, QDense, QConv2DBatchnorm, quantized_bits

# Source the Vivado path
os.environ['PATH'] = os.environ['XILINX_VIVADO'] + '/bin:' + os.environ['PATH']

np.random.seed(0)
tf.random.set_seed(0)

# BACKEND = "Vivado"
BACKEND = "Vitis"

def custom_weighted_mse_loss(I, J, n):
    W = tf.pow(I, n)
    squared_diffs = tf.pow(I - J, 2)
    weighted_squared_diffs = W * squared_diffs

    return tf.reduce_mean(weighted_squared_diffs)

def build_model(input_shape, total_bits, integer_bits):
    inputs = tf.keras.Input(shape=input_shape)
    x = QConv2DBatchnorm(1, 3, 1, "valid", 
                         kernel_quantizer=quantized_bits(8,2,alpha=1), bias_quantizer=quantized_bits(8,2,alpha=1), activation=quantized_bits(8,2,alpha=1),
                         )(inputs)
    x = tf.keras.layers.Flatten()(x)
    x = QDense(
        5,
        f"quantized_bits({total_bits}, {integer_bits}, alpha=1)"
    )(x)
    outputs = QActivation(f"quantized_relu({total_bits}, {integer_bits})")(x)

    model = tf.keras.Model(inputs=inputs, outputs=outputs)
    return model

def print_quantization_info(model):
    for layer in model.layers:
        print(f"Layer Name: {layer.name}")
        print(f"Type: {layer.__class__.__name__}")
        
        # Helper function to handle both quantizer objects and config dicts
        def process_quantizer(quantizer, prefix=""):
            if quantizer:
                if isinstance(quantizer, dict):
                    # Handle dictionary config
                    class_name = quantizer.get("class_name", "UnknownQuantizer")
                    config = quantizer.get("config", {})
                else:
                    # Handle object with potential get_config()
                    class_name = quantizer.__class__.__name__
                    config = quantizer.get_config() if hasattr(quantizer, "get_config") else {}
                
                print(f"  {prefix}Quantizer: {class_name}")
                print(f"  {prefix}Config: {config}")
            else:
                print(f"  No {prefix}Quantizer")

        # Check for QKeras layers with kernel/bias quantizers
        if isinstance(layer, (qk.QDense, qk.QConv2D, qk.QConv1D, 
                            qk.QConv2DTranspose, qk.QDepthwiseConv2D)):
            # Kernel quantizer
            process_quantizer(layer.kernel_quantizer, "Kernel ")
            
            # Bias quantizer
            process_quantizer(layer.bias_quantizer, "Bias ")
            
            # Activation quantizer
            activation = layer.activation
            if activation:
                if isinstance(activation, dict) or hasattr(activation, "get_config"):
                    process_quantizer(activation, "Activation ")
                else:
                    print(f"  Activation: {activation} (Not Quantized)")
            else:
                print("  No Activation")

        # Check for QActivation layers
        elif isinstance(layer, qk.QActivation):
            process_quantizer(layer.quantizer, "Activation ")
        
        print("-" * 50)




def main():

    ##################### QKeras model #####################
    FP_TOTAL = 8
    FP_INT = 2
    INPUT_SHAPE = (5, 5, 1)

    # Build the model
    model = build_model(INPUT_SHAPE, FP_TOTAL, FP_INT)

    # Compile the model
    model.compile(optimizer='adam', loss=custom_weighted_mse_loss, run_eagerly=True)

    # Display the model summary
    model.summary()

    print_quantization_info(model)

    ################### HLS4ML model ###################
    REUSE_FACTOR = 32

    config = hls4ml.utils.config_from_keras_model(model, granularity='model', backend=BACKEND)
    config['Model']['Precision']['default'] = f"ap_fixed<{FP_TOTAL},{FP_INT}>"
    config['Model']['ReuseFactor'] = REUSE_FACTOR
    config['Model']['Strategy'] = 'Resource'

    # config["LayerName"] = {"input_1": {"Precision": {"result": "ap_fixed<8,0>"}}}

    # Attempt conversion on simplified model
    if BACKEND=="Vivado":
        output_dir = f"/home/aelabd/RHEED/04_ref_design/rtl_models/vivado_2019.1/small_dummy"
    elif BACKEND=="Vitis":
        output_dir = f"/home/aelabd/RHEED/04_ref_design/rtl_models/vivado_2022.2/small_dummy"
    else: raise NotImplementedError
    hls_model = hls4ml.converters.convert_from_keras_model(
        model, 
        hls_config=config, 
        output_dir=output_dir, 
        backend=BACKEND,
        part='xcku035-fbva676-2-e', 
        io_type="io_stream"
    )

    hls_model.compile()

    print("")
    print(hls_model.config.config['OutputDir'])

    print(hls_model.predict(np.full((1, 5,5), 7).astype(float)))

    print(hls_model.config.config)

    hls_model.build(csim=False, synth=True, vsynth=True)

    hls4ml.report.read_vivado_report(hls_model.config.config['OutputDir'])

    print(hls_model.config.config['OutputDir'])


    ########################## Command line tools ##########################
    print("\n\n\n\n\n\n\n\n\n")
    src_old = "/home/aelabd/RHEED/CoaxlinkQuadCxp12_1cam/04_ref_design/rtl_models/vivado_2022.2/yuhao_model/myproject_prj/solution1/syn/verilog"
    for f in os.listdir(src_old):
        print(f"remove_files {os.path.join(src_old, f)}")

    # src_new = hls_model.config.config['OutputDir'] + "/myproject_prj/solution1/syn/verilog"
    print("\n\n\n\n\n\n\n\n\n")
    src_new = "/home/aelabd/RHEED/CoaxlinkQuadCxp12_1cam/04_ref_design/rtl_models/vivado_2022.2/small_dummy/myproject_prj/solution1/syn/verilog"
    for f in os.listdir(src_new):
        if f.endswith(".dat") or ("dense" not in f): continue
        v_file = os.path.join(src_new, f)
        v_file_temp = v_file.replace(".v", "_TEMP.v")
        with open(v_file, 'r') as og_file:
            with open(v_file_temp, 'w') as new_file:
                for line in og_file:
                    if ('.dat"') in line:
                        print(f"old_line: {line}")
                        line = line.replace(r'$readmemh("./', f'$readmemh("{src_new}/')
                        print(f"new_line: {line}")
                    new_file.write(line)
        
            os.remove(v_file)
            os.rename(v_file_temp, v_file)
            print(f"Updated file: {v_file}\n\n\n")


if __name__ == "__main__":
    main()