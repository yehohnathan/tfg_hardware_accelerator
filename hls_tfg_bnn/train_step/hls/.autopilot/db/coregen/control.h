// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of W1
//        bit 31~0 - W1[31:0] (Read/Write)
// 0x14 : Data signal of W1
//        bit 31~0 - W1[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of W2
//        bit 31~0 - W2[31:0] (Read/Write)
// 0x20 : Data signal of W2
//        bit 31~0 - W2[63:32] (Read/Write)
// 0x24 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_W1_DATA 0x10
#define CONTROL_BITS_W1_DATA 64
#define CONTROL_ADDR_W2_DATA 0x1c
#define CONTROL_BITS_W2_DATA 64
