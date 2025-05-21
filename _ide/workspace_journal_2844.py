# 2025-05-20T10:48:48.118598700
import vitis

client = vitis.create_client()
client.set_workspace(path="tfg_hardware_accelerator")

vitis.dispose()

