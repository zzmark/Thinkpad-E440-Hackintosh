/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-8, Tue Jan 31 13:33:02 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000AC4 (2756)
 *     Revision         0x01
 *     Checksum         0x4C
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "Cpc_Tabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */
DefinitionBlock ("", "SSDT", 1, "LENOVO", "Cpc_Tabl", 0x00001000)
{
    External (_PR_.CPU0, ProcessorObj)
    External (_PR_.CPU1, ProcessorObj)
    External (_PR_.CPU2, ProcessorObj)
    External (_PR_.CPU3, ProcessorObj)
    External (_PR_.CPU4, ProcessorObj)
    External (_PR_.CPU5, ProcessorObj)
    External (_PR_.CPU6, ProcessorObj)
    External (_PR_.CPU7, ProcessorObj)

    Scope (\_PR.CPU0)
    {
        Name (_CPC, Package (0x11)  // _CPC: Continuous Performance Control
        {
            0x11, 
            One, 
            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000000, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000004, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000008, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x000000000000000C, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000010, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000014, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000018, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x000000000000001C, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000020, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000024, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000028, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E7, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E8, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x000000000000003C, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000040, // Address
                    ,)
            }
        })
    }

    Scope (\_PR.CPU1)
    {
        Name (_CPC, Package (0x11)  // _CPC: Continuous Performance Control
        {
            0x11, 
            One, 
            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000064, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000068, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x000000000000006C, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000070, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000074, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000078, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x000000000000007C, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000080, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000084, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000088, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x000000000000008C, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E7, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E8, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000A0, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000A4, // Address
                    ,)
            }
        })
    }

    Scope (\_PR.CPU2)
    {
        Name (_CPC, Package (0x11)  // _CPC: Continuous Performance Control
        {
            0x11, 
            One, 
            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000C8, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000CC, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000D0, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000D4, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000D8, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000DC, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E0, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E4, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E8, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000EC, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000F0, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E7, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E8, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000104, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000108, // Address
                    ,)
            }
        })
    }

    Scope (\_PR.CPU3)
    {
        Name (_CPC, Package (0x11)  // _CPC: Continuous Performance Control
        {
            0x11, 
            One, 
            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x000000000000012C, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000130, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000134, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000138, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x000000000000013C, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000140, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000144, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000148, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x000000000000014C, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000150, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000154, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E7, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E8, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000168, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x000000000000016C, // Address
                    ,)
            }
        })
    }

    Scope (\_PR.CPU4)
    {
        Name (_CPC, Package (0x11)  // _CPC: Continuous Performance Control
        {
            0x11, 
            One, 
            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000190, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000194, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000198, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x000000000000019C, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000001A0, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000001A4, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000001A8, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000001AC, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000001B0, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000001B4, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000001B8, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E7, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E8, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000001CC, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000001D0, // Address
                    ,)
            }
        })
    }

    Scope (\_PR.CPU5)
    {
        Name (_CPC, Package (0x11)  // _CPC: Continuous Performance Control
        {
            0x11, 
            One, 
            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000001F4, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000001F8, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000001FC, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000200, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000204, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000208, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x000000000000020C, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000210, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000214, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000218, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x000000000000021C, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E7, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E8, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000230, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000234, // Address
                    ,)
            }
        })
    }

    Scope (\_PR.CPU6)
    {
        Name (_CPC, Package (0x11)  // _CPC: Continuous Performance Control
        {
            0x11, 
            One, 
            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000258, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x000000000000025C, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000260, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000264, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000268, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x000000000000026C, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000270, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000274, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000278, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x000000000000027C, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000280, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E7, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E8, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000294, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000298, // Address
                    ,)
            }
        })
    }

    Scope (\_PR.CPU7)
    {
        Name (_CPC, Package (0x11)  // _CPC: Continuous Performance Control
        {
            0x11, 
            One, 
            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000002BC, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000002C0, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000002C4, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000002C8, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000002CC, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000002D0, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000002D4, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000002D8, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000002DC, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000002E0, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000002E4, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E7, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E8, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000002F8, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (PCC, 
                    0x20,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000002FC, // Address
                    ,)
            }
        })
    }
}

