# 2025-06-17T09:33:49.473177200
import vitis

client = vitis.create_client()
client.set_workspace(path="tfg_hardware_accelerator")

comp = client.get_component(name="hls_tfg_bnn")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

vitis.dispose()

