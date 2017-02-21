/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-4, Tue Jan 31 13:33:02 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000078E (1934)
 *     Revision         0x01
 *     Checksum         0x61
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "Cpu0Ist"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */
DefinitionBlock ("", "SSDT", 1, "LENOVO", "Cpu0Ist", 0x00003000)
{
    External (_PR_.CFGD, FieldUnitObj)
    External (_PR_.CPU0, ProcessorObj)
    External (_SB_.PCI0.LPC_.EC__.AC__._PSR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPC_.EC__.LPMD, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPC_.EC__.PCVL, FieldUnitObj)
    External (_SB_.PCI0.LPC_.EC__.PIBS, FieldUnitObj)
    External (_SB_.PCI0.LPC_.EC__.PLLS, FieldUnitObj)
    External (_SB_.PCI0.LPC_.EC__.PLMS, FieldUnitObj)
    External (_SB_.PCI0.LPC_.EC__.PLSL, FieldUnitObj)
    External (_SB_.PCI0.LPC_.EC__.PLTU, FieldUnitObj)
    External (_SB_.PCI0.LPC_.EC__.TSL0, FieldUnitObj)
    External (FTPS, FieldUnitObj)
    External (GFPL, FieldUnitObj)
    External (LWST, FieldUnitObj)
    External (MTAU, FieldUnitObj)
    External (PDC0, IntObj)
    External (PL1L, FieldUnitObj)
    External (PL1M, FieldUnitObj)
    External (PPCA, FieldUnitObj)
    External (PPCR, FieldUnitObj)
    External (TCFA, FieldUnitObj)
    External (TCFD, FieldUnitObj)
    External (TCNT, FieldUnitObj)

    Scope (\_PR.CPU0)
    {
        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Local0 = Zero
            Local0 = \_SB.PCI0.LPC.EC.LPMD ()
            If (!Local0)
            {
                If (((\_SB.PCI0.LPC.EC.AC._PSR () && \TCFA) || (!\_SB.PCI0.LPC.EC.AC._PSR () && \TCFD)))
                {
                    If ((\_SB.PCI0.LPC.EC.TSL0 & 0x76))
                    {
                        Local0 = \LWST
                    }
                }
                ElseIf ((\_SB.PCI0.LPC.EC.TSL0 & 0x77))
                {
                    Local0 = \LWST
                }

                If (!Local0)
                {
                    If ((\PPCA || \FTPS))
                    {
                        If ((\FTPS <= \PPCA))
                        {
                            Local0 = \PPCA
                        }
                        Else
                        {
                            Local0 = \FTPS
                        }
                    }
                }
            }

            If (((\GFPL && !Local0) || (!\GFPL && Local0)))
            {
                Local1 = 0x03E8
                While (\_SB.PCI0.LPC.EC.PIBS)
                {
                    Sleep (One)
                    Local1--
                    If (!Local1)
                    {
                        \PPCR = Local0
                        Return (Local0)
                    }
                }

                If (Local0)
                {
                    If (!\GFPL)
                    {
                        \GFPL = One
                        \_SB.PCI0.LPC.EC.PLSL = 0x04
                        \_SB.PCI0.LPC.EC.PLTU = One
                        \_SB.PCI0.LPC.EC.PLLS = 0x0D
                        \_SB.PCI0.LPC.EC.PLMS = Zero
                    }
                }
                ElseIf (\GFPL)
                {
                    \GFPL = Zero
                    \_SB.PCI0.LPC.EC.PLSL = 0x04
                    If (\MTAU)
                    {
                        \_SB.PCI0.LPC.EC.PLTU = \MTAU
                    }
                    Else
                    {
                        \_SB.PCI0.LPC.EC.PLTU = 0x1C
                    }

                    \_SB.PCI0.LPC.EC.PLLS = \PL1L
                    \_SB.PCI0.LPC.EC.PLMS = \PL1M
                }
            }

            \PPCR = Local0
            If (!Local0)
            {
                Local2 = \_SB.PCI0.LPC.EC.PCVL
                Return (Local2)
            }

            Return (Local0)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            If (((CFGD & One) && (PDC0 & One)))
            {
                Return (Package (0x02)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }
                })
            }
        }

        Name (_PSS, Package (0x10)  // _PSS: Performance Supported States
        {
            Package (0x06)
            {
                0x000009C5, 
                0x00009088, 
                0x0000000A, 
                0x0000000A, 
                0x00001F00, 
                0x00001F00
            }, 

            Package (0x06)
            {
                0x000009C4, 
                0x00009088, 
                0x0000000A, 
                0x0000000A, 
                0x00001900, 
                0x00001900
            }, 

            Package (0x06)
            {
                0x00000960, 
                0x0000892C, 
                0x0000000A, 
                0x0000000A, 
                0x00001800, 
                0x00001800
            }, 

            Package (0x06)
            {
                0x000008FC, 
                0x000081F4, 
                0x0000000A, 
                0x0000000A, 
                0x00001700, 
                0x00001700
            }, 

            Package (0x06)
            {
                0x00000834, 
                0x000073EE, 
                0x0000000A, 
                0x0000000A, 
                0x00001500, 
                0x00001500
            }, 

            Package (0x06)
            {
                0x000007D0, 
                0x00006D20, 
                0x0000000A, 
                0x0000000A, 
                0x00001400, 
                0x00001400
            }, 

            Package (0x06)
            {
                0x0000076C, 
                0x0000667A, 
                0x0000000A, 
                0x0000000A, 
                0x00001300, 
                0x00001300
            }, 

            Package (0x06)
            {
                0x00000708, 
                0x00005FF1, 
                0x0000000A, 
                0x0000000A, 
                0x00001200, 
                0x00001200
            }, 

            Package (0x06)
            {
                0x00000640, 
                0x00005345, 
                0x0000000A, 
                0x0000000A, 
                0x00001000, 
                0x00001000
            }, 

            Package (0x06)
            {
                0x000005DC, 
                0x00004D21, 
                0x0000000A, 
                0x0000000A, 
                0x00000F00, 
                0x00000F00
            }, 

            Package (0x06)
            {
                0x00000578, 
                0x00004722, 
                0x0000000A, 
                0x0000000A, 
                0x00000E00, 
                0x00000E00
            }, 

            Package (0x06)
            {
                0x00000514, 
                0x00004141, 
                0x0000000A, 
                0x0000000A, 
                0x00000D00, 
                0x00000D00
            }, 

            Package (0x06)
            {
                0x000004B0, 
                0x00003B80, 
                0x0000000A, 
                0x0000000A, 
                0x00000C00, 
                0x00000C00
            }, 

            Package (0x06)
            {
                0x000003E8, 
                0x0000305E, 
                0x0000000A, 
                0x0000000A, 
                0x00000A00, 
                0x00000A00
            }, 

            Package (0x06)
            {
                0x00000384, 
                0x00002AFE, 
                0x0000000A, 
                0x0000000A, 
                0x00000900, 
                0x00000900
            }, 

            Package (0x06)
            {
                0x00000320, 
                0x000025BE, 
                0x0000000A, 
                0x0000000A, 
                0x00000800, 
                0x00000800
            }
        })
        

        

        

        

        

        

        

        

        

        

        

        

        

        

        

        

        Name (PSDF, Zero)
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If (!PSDF)
            {
                DerefOf (HPSD [Zero]) [0x04] = TCNT
                DerefOf (SPSD [Zero]) [0x04] = TCNT
                PSDF = Ones
            }

            If ((PDC0 & 0x0800))
            {
                Return (HPSD)
            }

            Return (SPSD)
        }

        Name (HPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })
        Name (SPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
    }
}

