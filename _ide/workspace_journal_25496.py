# 2025-06-10T16:27:04.677912400
import vitis

client = vitis.create_client()
client.set_workspace(path="tfg_hardware_accelerator")

comp = client.get_component(name="hls_tfg_bnn")
comp.run(operation="C_SIMULATION")

