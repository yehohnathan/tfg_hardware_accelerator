# 2025-05-13T22:06:08.312099600
import vitis

client = vitis.create_client()
client.set_workspace(path="tfg_hardware_accelerator")

comp = client.create_hls_component(name = "hls_tfg_bnn",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="hls_tfg_bnn")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

vitis.dispose()

