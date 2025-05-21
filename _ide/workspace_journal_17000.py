# 2025-05-20T09:19:41.840563900
import vitis

client = vitis.create_client()
client.set_workspace(path="tfg_hardware_accelerator")

vitis.dispose()

