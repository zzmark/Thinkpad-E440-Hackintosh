/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-2, Tue Jan 31 13:33:02 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000044F (1103)
 *     Revision         0x01
 *     Checksum         0x90
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "TP-SSDT2"
 *     OEM Revision     0x00000200 (512)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */
DefinitionBlock ("", "SSDT", 1, "LENOVO", "TP-SSDT2", 0x00000200)
{
    External (_SB_.PCI0.LPC_.EC__.BFRQ, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPC_.EC__.BRNS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPC_.EC__.BRTW, PkgObj)
    External (_SB_.PCI0.PEG_.VID_.ISOP, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEG_.VID_.LCD0, DeviceObj)
    External (_SB_.PCI0.VID_.AINT, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.VID_.LCD0, DeviceObj)
    External (_SB_.PCI0.VID_.PFMB, FieldUnitObj)
    External (BRLV, FieldUnitObj)
    External (NBCF, IntObj)
    External (UCMS, MethodObj)    // 1 Arguments
    External (VBRC, MethodObj)    // 1 Arguments
    External (WIN7, IntObj)
    External (WIN8, IntObj)
    External (WVIS, IntObj)

    Scope (\)
    {
        Method (KOU2, 0, NotSerialized)
        {
            Stall (0x64)
        }
    }

    Scope (\_SB.PCI0.VID.LCD0)
    {
        Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
        {
            If (\WVIS)
            {
                \NBCF = 0x01
            }

            Local0 = \_SB.PCI0.LPC.EC.BFRQ ()
            If ((\_SB.PCI0.VID.PFMB != Local0))
            {
                \_SB.PCI0.VID.AINT (0x03, Local0)
            }

            If (\WIN8)
            {
                Return (Package (0x67)
                {
                    0x64, 
                    0x64, 
                    0x00, 
                    0x01, 
                    0x02, 
                    0x03, 
                    0x04, 
                    0x05, 
                    0x06, 
                    0x07, 
                    0x08, 
                    0x09, 
                    0x0A, 
                    0x0B, 
                    0x0C, 
                    0x0D, 
                    0x0E, 
                    0x0F, 
                    0x10, 
                    0x11, 
                    0x12, 
                    0x13, 
                    0x14, 
                    0x15, 
                    0x16, 
                    0x17, 
                    0x18, 
                    0x19, 
                    0x1A, 
                    0x1B, 
                    0x1C, 
                    0x1D, 
                    0x1E, 
                    0x1F, 
                    0x20, 
                    0x21, 
                    0x22, 
                    0x23, 
                    0x24, 
                    0x25, 
                    0x26, 
                    0x27, 
                    0x28, 
                    0x29, 
                    0x2A, 
                    0x2B, 
                    0x2C, 
                    0x2D, 
                    0x2E, 
                    0x2F, 
                    0x30, 
                    0x31, 
                    0x32, 
                    0x33, 
                    0x34, 
                    0x35, 
                    0x36, 
                    0x37, 
                    0x38, 
                    0x39, 
                    0x3A, 
                    0x3B, 
                    0x3C, 
                    0x3D, 
                    0x3E, 
                    0x3F, 
                    0x40, 
                    0x41, 
                    0x42, 
                    0x43, 
                    0x44, 
                    0x45, 
                    0x46, 
                    0x47, 
                    0x48, 
                    0x49, 
                    0x4A, 
                    0x4B, 
                    0x4C, 
                    0x4D, 
                    0x4E, 
                    0x4F, 
                    0x50, 
                    0x51, 
                    0x52, 
                    0x53, 
                    0x54, 
                    0x55, 
                    0x56, 
                    0x57, 
                    0x58, 
                    0x59, 
                    0x5A, 
                    0x5B, 
                    0x5C, 
                    0x5D, 
                    0x5E, 
                    0x5F, 
                    0x60, 
                    0x61, 
                    0x62, 
                    0x63, 
                    0x64
                })
            }

            Return (\_SB.PCI0.LPC.EC.BRTW)
        }

        Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
        {
            Local0 = Match (\_SB.PCI0.LPC.EC.BRTW, MEQ, Arg0, MTR, 0x00, 0x02)
            If ((Local0 != Ones))
            {
                Local1 = (Local0 - 0x02)
                \BRLV = Local1
                \_SB.PCI0.LPC.EC.BRNS ()
                \UCMS (0x16)
            }
        }

        Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
        {
            Local0 = \BRLV
            Local1 = (Local0 + 0x02)
            If ((Local1 <= 0x11))
            {
                Return (DerefOf (\_SB.PCI0.LPC.EC.BRTW [Local1]))
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (\_SB.PCI0.PEG.VID.LCD0)
    {
        Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
        {
            If (\WVIS)
            {
                \NBCF = 0x01
            }

            If (\WIN8)
            {
                Return (Package (0x67)
                {
                    0x64, 
                    0x64, 
                    0x00, 
                    0x01, 
                    0x02, 
                    0x03, 
                    0x04, 
                    0x05, 
                    0x06, 
                    0x07, 
                    0x08, 
                    0x09, 
                    0x0A, 
                    0x0B, 
                    0x0C, 
                    0x0D, 
                    0x0E, 
                    0x0F, 
                    0x10, 
                    0x11, 
                    0x12, 
                    0x13, 
                    0x14, 
                    0x15, 
                    0x16, 
                    0x17, 
                    0x18, 
                    0x19, 
                    0x1A, 
                    0x1B, 
                    0x1C, 
                    0x1D, 
                    0x1E, 
                    0x1F, 
                    0x20, 
                    0x21, 
                    0x22, 
                    0x23, 
                    0x24, 
                    0x25, 
                    0x26, 
                    0x27, 
                    0x28, 
                    0x29, 
                    0x2A, 
                    0x2B, 
                    0x2C, 
                    0x2D, 
                    0x2E, 
                    0x2F, 
                    0x30, 
                    0x31, 
                    0x32, 
                    0x33, 
                    0x34, 
                    0x35, 
                    0x36, 
                    0x37, 
                    0x38, 
                    0x39, 
                    0x3A, 
                    0x3B, 
                    0x3C, 
                    0x3D, 
                    0x3E, 
                    0x3F, 
                    0x40, 
                    0x41, 
                    0x42, 
                    0x43, 
                    0x44, 
                    0x45, 
                    0x46, 
                    0x47, 
                    0x48, 
                    0x49, 
                    0x4A, 
                    0x4B, 
                    0x4C, 
                    0x4D, 
                    0x4E, 
                    0x4F, 
                    0x50, 
                    0x51, 
                    0x52, 
                    0x53, 
                    0x54, 
                    0x55, 
                    0x56, 
                    0x57, 
                    0x58, 
                    0x59, 
                    0x5A, 
                    0x5B, 
                    0x5C, 
                    0x5D, 
                    0x5E, 
                    0x5F, 
                    0x60, 
                    0x61, 
                    0x62, 
                    0x63, 
                    0x64
                })
            }

            Return (\_SB.PCI0.LPC.EC.BRTW)
        }

        Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
        {
            If (((\WIN7 != 0x00) && \_SB.PCI0.PEG.VID.ISOP ()))
            {
                \_SB.PCI0.VID.LCD0._BCM (Arg0)
            }
            ElseIf (\NBCF)
            {
                Local0 = Match (\_SB.PCI0.LPC.EC.BRTW, MEQ, Arg0, MTR, 0x00, 0x02)
                If ((Local0 != Ones))
                {
                    Local1 = (Local0 - 0x02)
                    \VBRC (Local1)
                    \BRLV = Local1
                }
            }
        }

        Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
        {
            If (((\WIN7 != 0x00) && \_SB.PCI0.PEG.VID.ISOP ()))
            {
                Return (\_SB.PCI0.VID.LCD0._BQC ())
            }
            Else
            {
                Local0 = \BRLV
                Local1 = (Local0 + 0x02)
                If ((Local1 <= 0x11))
                {
                    Return (DerefOf (\_SB.PCI0.LPC.EC.BRTW [Local1]))
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }
}

