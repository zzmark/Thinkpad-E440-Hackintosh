/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-6, Tue Jan 31 13:33:02 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000011FA (4602)
 *     Revision         0x01
 *     Checksum         0xA1
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "SaSsdt "
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */
DefinitionBlock ("", "SSDT", 1, "LENOVO", "SaSsdt ", 0x00003000)
{
    /*
     * iASL Warning: There were 2 external control methods found during
     * disassembly, but only 1 was resolved (1 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_SB_.LID_._LID, MethodObj)    // 0 Arguments
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.HDAU, DeviceObj)
    External (_SB_.PCI0.LPC_.SCIS, FieldUnitObj)
    External (_SB_.PCI0.IGPU, DeviceObj)
    External (GUAM, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (LIDS, FieldUnitObj)
    External (S0ID, FieldUnitObj)
    External (WVIS, IntObj)
    External (WXPF, IntObj)

    OperationRegion (SANV, SystemMemory, 0xBCF68D98, 0x0141)
    Field (SANV, AnyAcc, Lock, Preserve)
    {
        SARV,   32, 
        ASLB,   32, 
        IMON,   8, 
        IGDS,   8, 
        CADL,   8, 
        PADL,   8, 
        CSTE,   16, 
        NSTE,   16, 
        DID9,   32, 
        DIDA,   32, 
        DIDB,   32, 
        IBTT,   8, 
        IPAT,   8, 
        IPSC,   8, 
        IBLC,   8, 
        IBIA,   8, 
        ISSC,   8, 
        IPCF,   8, 
        IDMS,   8, 
        IF1E,   8, 
        HVCO,   8, 
        NXD1,   32, 
        NXD2,   32, 
        NXD3,   32, 
        NXD4,   32, 
        NXD5,   32, 
        NXD6,   32, 
        NXD7,   32, 
        NXD8,   32, 
        GSMI,   8, 
        PAVP,   8, 
        Offset (0x49), 
        KSV0,   32, 
        KSV1,   8, 
        BBAR,   32, 
        BLCS,   8, 
        BRTL,   8, 
        ALSE,   8, 
        ALAF,   8, 
        LLOW,   8, 
        LHIH,   8, 
        ALFP,   8, 
        AUDA,   32, 
        AUDB,   32, 
        Offset (0x65), 
        DIDC,   32, 
        DIDD,   32, 
        DIDE,   32, 
        DIDF,   32, 
        CADR,   32, 
        CCNT,   8, 
        Offset (0xC8), 
        SGMD,   8, 
        SGFL,   8, 
        PWOK,   8, 
        HLRS,   8, 
        PWEN,   8, 
        PRST,   8, 
        CPSP,   32, 
        EECP,   8, 
        EVCP,   16, 
        XBAS,   32, 
        GBAS,   16, 
        SGGP,   8, 
        NVGA,   32, 
        NVHA,   32, 
        AMDA,   32, 
        NDID,   8, 
        DID1,   32, 
        DID2,   32, 
        DID3,   32, 
        DID4,   32, 
        DID5,   32, 
        DID6,   32, 
        DID7,   32, 
        DID8,   32, 
        OBS1,   32, 
        OBS2,   32, 
        OBS3,   32, 
        OBS4,   32, 
        OBS5,   32, 
        OBS6,   32, 
        OBS7,   32, 
        OBS8,   32, 
        LTRA,   8, 
        OBFA,   8, 
        LTRB,   8, 
        OBFB,   8, 
        LTRC,   8, 
        OBFC,   8, 
        SMSL,   16, 
        SNSL,   16, 
        P0UB,   8, 
        P1UB,   8, 
        P2UB,   8, 
        EDPV,   8, 
        NXDX,   32, 
        DIDX,   32, 
        PCSL,   8, 
        SC7A,   8
    }

    Scope (\_SB.PCI0.HDAU)
    {
        Name (BARA, 0x80000000)
        Name (TBAR, Zero)
        Name (TCMD, Zero)
        Name (MODB, Zero)
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If ((AUVD != 0xFFFF))
            {
                Return (0x0F)
            }

            Return (Zero)
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If ((((ABAR & 0xFFFFC004) != 0xFFFFC004) && ((ABAR & 0xFFFFC000) != Zero)))
            {
                BARA = ABAR
            }
        }

        OperationRegion (RPCZ, PCI_Config, Zero, 0x40)
        Field (RPCZ, DWordAcc, Lock, Preserve)
        {
            AUVD,   16, 
            Offset (0x04), 
            ACMD,   8, 
            Offset (0x10), 
            ABAR,   32
        }

        Method (ASTR, 0, Serialized)
        {
            If ((((ABAR & 0xFFFFC004) != 0xFFFFC004) && ((ABAR & 0xFFFFC000) != Zero)))
            {
                BBAR = (ABAR & 0xFFFFFFF0)
                BBAR += 0x1000
                OperationRegion (RPCY, SystemMemory, BBAR, 0x25)
                Field (RPCY, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x0C), 
                    EM4W,   32, 
                    EMWA,   32, 
                    Offset (0x1C), 
                    ADWA,   32
                }

                EMWA = AUDA
                ADWA = AUDB
            }
        }

        Method (VSTR, 1, Serialized)
        {
            Name (CONT, 0x03E8)
            Name (ADDR, 0x80000000)
            ADDR = Arg0
            OperationRegion (CCDC, SystemMemory, ADDR, 0x04)
            Field (CCDC, ByteAcc, NoLock, Preserve)
            {
                CDEC,   32
            }

            If ((((ABAR & 0xFFFFC004) != 0xFFFFC004) && ((ABAR & 0xFFFFC000) != Zero)))
            {
                If ((CDEC != Zero))
                {
                    BBAR = (ABAR & 0xFFFFFFF0)
                    OperationRegion (IPCV, SystemMemory, BBAR, 0x70)
                    Field (IPCV, DWordAcc, NoLock, Preserve)
                    {
                        Offset (0x60), 
                        AVIC,   32, 
                        Offset (0x68), 
                        AIRS,   16
                    }

                    CONT = 0x03E8
                    While ((((AIRS & One) == One) && (CONT != Zero)))
                    {
                        Stall (One)
                        CONT--
                    }

                    AIRS |= 0x02
                    AVIC = CDEC
                    AIRS |= One
                    CONT = 0x03E8
                    While ((((AIRS & One) == One) && (CONT != Zero)))
                    {
                        Stall (One)
                        CONT--
                    }
                }
            }
        }

        Method (CXDC, 0, Serialized)
        {
            Name (IDDX, 0x80000000)
            If (((CADR != Zero) && (CCNT != Zero)))
            {
                IDDX = CADR
                While ((IDDX < (CADR + (CCNT * 0x04))))
                {
                    VSTR (IDDX)
                    IDDX += 0x04
                }
            }
        }

        Method (ARST, 0, Serialized)
        {
            If ((((ABAR & 0xFFFFC004) != 0xFFFFC004) && ((ABAR & 0xFFFFC000) != Zero)))
            {
                BBAR = (ABAR & 0xFFFFFFF0)
                OperationRegion (IPCV, SystemMemory, BBAR, 0xBF)
                Field (IPCV, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x08), 
                    CRST,   32, 
                    Offset (0x4C), 
                    CORB,   32, 
                    Offset (0x5C), 
                    RIRB,   32, 
                    Offset (0x80), 
                    OSD1,   32, 
                    Offset (0xA0), 
                    OSD2,   32
                }

                CORB &= 0xFFFFFFFD
                RIRB &= 0xFFFFFFFD
                OSD1 &= 0xFFFFFFFD
                OSD2 &= 0xFFFFFFFD
                CRST &= 0xFFFFFFFE
            }
        }

        Method (AINI, 0, Serialized)
        {
            Name (CONT, 0x03E8)
            If ((((ABAR & 0xFFFFC004) != 0xFFFFC004) && ((ABAR & 0xFFFFC000) != Zero)))
            {
                BBAR = (ABAR & 0xFFFFFFF0)
                OperationRegion (IPCV, SystemMemory, BBAR, 0x70)
                Field (IPCV, DWordAcc, NoLock, Preserve)
                {
                    GCAP,   16, 
                    Offset (0x08), 
                    GCTL,   32, 
                    Offset (0x0E), 
                    SSTS,   8, 
                    Offset (0x60), 
                    AVIC,   32, 
                    Offset (0x68), 
                    AIRS,   16
                }

                GCTL |= One
                CONT = 0x03E8
                While ((((GCTL & One) == Zero) && (CONT != Zero)))
                {
                    Stall (One)
                    CONT--
                }

                GCAP &= 0xFFFF
                SSTS |= 0x0F
                GCTL &= 0xFFFFFFFE
                CONT = 0x03E8
                While ((((GCTL & One) == One) && (CONT != Zero)))
                {
                    Stall (One)
                    CONT--
                }

                GCTL |= One
                CONT = 0x03E8
                While ((((GCTL & One) == Zero) && (CONT != Zero)))
                {
                    Stall (One)
                    CONT--
                }
            }
        }

        Method (ABWA, 1, Serialized)
        {
            If (Arg0)
            {
                If ((((BARA & 0x80000000) != 0x80000000) && ((ABAR & 0xFFFFC000) == Zero)))
                {
                    TBAR = ABAR
                    TCMD = ACMD
                    ABAR = BARA
                    ACMD = 0x06
                    MODB = One
                }
            }
            ElseIf (MODB)
            {
                If ((ABAR == BARA))
                {
                    ABAR = TBAR
                    ACMD = TCMD
                }
            }
        }
    }

    Scope (\_SB.PCI0.IGPU)
    {
        Scope (\_SB.PCI0)
        {
            OperationRegion (MCHP, PCI_Config, 0x40, 0xC0)
            Field (MCHP, AnyAcc, NoLock, Preserve)
            {
                Offset (0x14), 
                AUDE,   8, 
                Offset (0x60), 
                TASM,   10, 
                Offset (0x62)
            }
        }

        OperationRegion (IGDP, PCI_Config, 0x40, 0xC0)
        Field (IGDP, AnyAcc, NoLock, Preserve)
        {
            Offset (0x12), 
                ,   1, 
            GIVD,   1, 
                ,   2, 
            GUMA,   3, 
            Offset (0x14), 
                ,   4, 
            GMFN,   1, 
            Offset (0x18), 
            Offset (0xA4), 
            ASLE,   8, 
            Offset (0xA8), 
            GSSE,   1, 
            GSSB,   14, 
            GSES,   1, 
            Offset (0xB0), 
                ,   12, 
            CDVL,   1, 
            Offset (0xB2), 
            Offset (0xB5), 
            LBPC,   8, 
            Offset (0xBC), 
            ASLS,   32
        }

        OperationRegion (IGDM, SystemMemory, \ASLB, 0x2000)
        Field (IGDM, AnyAcc, NoLock, Preserve)
        {
            SIGN,   128, 
            SIZE,   32, 
            OVER,   32, 
            SVER,   256, 
            VVER,   128, 
            GVER,   128, 
            MBOX,   32, 
            DMOD,   32, 
            PCON,   32, 
            DVER,   64, 
            Offset (0x100), 
            DRDY,   32, 
            CSTS,   32, 
            CEVT,   32, 
            Offset (0x120), 
            DIDL,   32, 
            DDL2,   32, 
            DDL3,   32, 
            DDL4,   32, 
            DDL5,   32, 
            DDL6,   32, 
            DDL7,   32, 
            DDL8,   32, 
            CPDL,   32, 
            CPL2,   32, 
            CPL3,   32, 
            CPL4,   32, 
            CPL5,   32, 
            CPL6,   32, 
            CPL7,   32, 
            CPL8,   32, 
            CADL,   32, 
            CAL2,   32, 
            CAL3,   32, 
            CAL4,   32, 
            CAL5,   32, 
            CAL6,   32, 
            CAL7,   32, 
            CAL8,   32, 
            NADL,   32, 
            NDL2,   32, 
            NDL3,   32, 
            NDL4,   32, 
            NDL5,   32, 
            NDL6,   32, 
            NDL7,   32, 
            NDL8,   32, 
            ASLP,   32, 
            TIDX,   32, 
            CHPD,   32, 
            CLID,   32, 
            CDCK,   32, 
            SXSW,   32, 
            EVTS,   32, 
            CNOT,   32, 
            NRDY,   32, 
            DDL9,   32, 
            DD10,   32, 
            DD11,   32, 
            DD12,   32, 
            DD13,   32, 
            DD14,   32, 
            DD15,   32, 
            CPL9,   32, 
            CP10,   32, 
            CP11,   32, 
            CP12,   32, 
            CP13,   32, 
            CP14,   32, 
            CP15,   32, 
            Offset (0x200), 
            SCIE,   1, 
            GEFC,   4, 
            GXFC,   3, 
            GESF,   8, 
            Offset (0x204), 
            PARM,   32, 
            DSLP,   32, 
            Offset (0x300), 
            ARDY,   32, 
            ASLC,   32, 
            TCHE,   32, 
            ALSI,   32, 
            BCLP,   32, 
            PFIT,   32, 
            CBLV,   32, 
            BCLM,   320, 
            CPFM,   32, 
            EPFM,   32, 
            PLUT,   592, 
            PFMB,   32, 
            CCDV,   32, 
            PCFT,   32, 
            SROT,   32, 
            IUER,   32, 
            FDSP,   64, 
            FDSS,   32, 
            STAT,   32, 
            Offset (0x400), 
            GVD1,   49152, 
            PHED,   32, 
            BDDC,   2048
        }

        Name (DBTB, Package (0x15)
        {
            Zero, 
            0x07, 
            0x38, 
            0x01C0, 
            0x0E00, 
            0x3F, 
            0x01C7, 
            0x0E07, 
            0x01F8, 
            0x0E38, 
            0x0FC0, 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            0x7000, 
            0x7007, 
            0x7038, 
            0x71C0, 
            0x7E00
        })
        Name (CDCT, Package (0x05)
        {
            Package (0x02)
            {
                0xE4, 
                0x0140
            }, 

            Package (0x02)
            {
                0xDE, 
                0x014D
            }, 

            Package (0x02)
            {
                0xDE, 
                0x014D
            }, 

            Package (0x02)
            {
                Zero, 
                Zero
            }, 

            Package (0x02)
            {
                0xDE, 
                0x014D
            }
        })
        Name (SUCC, One)
        Name (NVLD, 0x02)
        Name (CRIT, 0x04)
        Name (NCRT, 0x06)
        Method (GSCI, 0, Serialized)
        {
            If ((GEFC == 0x04))
            {
                GXFC = GBDA ()
            }

            If ((GEFC == 0x06))
            {
                GXFC = SBCB ()
            }

            GEFC = Zero
            \_SB.PCI0.LPC.SCIS = One
            GSSE = Zero
            SCIE = Zero
            Return (Zero)
        }

        Method (GBDA, 0, Serialized)
        {
            If ((GESF == Zero))
            {
                PARM = 0x0241
                GESF = Zero
                Return (SUCC)
            }

            If ((GESF == One))
            {
                PARM = 0x00200382
                GESF = Zero
                Return (SUCC)
            }

            If ((GESF == 0x04))
            {
                PARM &= 0xEFFF0000
                PARM &= (DerefOf (DBTB [IBTT]) << 0x10)
                PARM |= IBTT
                GESF = Zero
                Return (SUCC)
            }

            If ((GESF == 0x05))
            {
                If (\_SB.LID._LID ())
                {
                    LIDS = One
                }
                Else
                {
                    LIDS = Zero
                }

                PARM = IPSC
                PARM |= (IPAT << 0x08)
                PARM += 0x0100
                PARM |= (LIDS << 0x10)
                PARM += 0x00010000
                PARM |= (IBIA << 0x14)
                GESF = Zero
                Return (SUCC)
            }

            If ((GESF == 0x07))
            {
                PARM = GIVD
                PARM ^= One
                PARM |= (GMFN << One)
                PARM |= 0x1800
                PARM |= 0x00060000
                PARM |= (IDMS << 0x11)
                PARM |= (DerefOf (DerefOf (CDCT [HVCO]) [CDVL]) << 0x15)
                GESF = One
                Return (SUCC)
            }

            If ((GESF == 0x0A))
            {
                PARM = Zero
                If (ISSC)
                {
                    PARM |= 0x03
                }

                GESF = Zero
                Return (SUCC)
            }

            If ((GESF == 0x0B))
            {
                PARM = KSV0
                GESF = KSV1
                Return (SUCC)
            }

            GESF = Zero
            Return (CRIT)
        }

        Method (SBCB, 0, Serialized)
        {
            If ((GESF == Zero))
            {
                PARM = 0x00220382
                GESF = Zero
                Return (SUCC)
            }

            If ((GESF == One))
            {
                GESF = Zero
                PARM = Zero
                Return (SUCC)
            }

            If ((GESF == 0x03))
            {
                GESF = Zero
                PARM = Zero
                Return (SUCC)
            }

            If ((GESF == 0x04))
            {
                GESF = Zero
                PARM = Zero
                Return (SUCC)
            }

            If ((GESF == 0x05))
            {
                GESF = Zero
                PARM = Zero
                Return (SUCC)
            }

            If ((GESF == 0x07))
            {
                If ((S0ID == One))
                {
                    If (((PARM & 0xFF) == One))
                    {
                        \GUAM (One)
                    }
                }

                If ((PARM == Zero))
                {
                    Local0 = CLID
                    If ((0x80000000 & Local0))
                    {
                        CLID &= 0x0F
                        GLID (CLID)
                    }
                }

                GESF = Zero
                PARM = Zero
                Return (SUCC)
            }

            If ((GESF == 0x08))
            {
                If ((S0ID == One))
                {
                    Local0 = ((PARM >> 0x08) & 0xFF)
                    If ((Local0 == Zero))
                    {
                        \GUAM (Zero)
                    }
                }

                GESF = Zero
                PARM = Zero
                Return (SUCC)
            }

            If ((GESF == 0x09))
            {
                IBTT = (PARM & 0xFF)
                GESF = Zero
                PARM = Zero
                Return (SUCC)
            }

            If ((GESF == 0x0A))
            {
                IPSC = (PARM & 0xFF)
                If (((PARM >> 0x08) & 0xFF))
                {
                    IPAT = ((PARM >> 0x08) & 0xFF)
                    IPAT--
                }

                IBIA = ((PARM >> 0x14) & 0x07)
                GESF = Zero
                PARM = Zero
                Return (SUCC)
            }

            If ((GESF == 0x0B))
            {
                IF1E = ((PARM >> One) & One)
                If ((PARM & 0x0001E000))
                {
                    IDMS = ((PARM >> 0x0D) & 0x0F)
                }
                Else
                {
                    IDMS = ((PARM >> 0x11) & 0x0F)
                }

                GESF = Zero
                PARM = Zero
                Return (SUCC)
            }

            If ((GESF == 0x10))
            {
                GESF = Zero
                PARM = Zero
                Return (SUCC)
            }

            If ((GESF == 0x11))
            {
                PARM = (LIDS << 0x08)
                PARM += 0x0100
                GESF = Zero
                Return (SUCC)
            }

            If ((GESF == 0x12))
            {
                If ((PARM & One))
                {
                    If (((PARM >> One) == One))
                    {
                        ISSC = One
                    }
                    Else
                    {
                        GESF = Zero
                        Return (CRIT)
                    }
                }
                Else
                {
                    ISSC = Zero
                }

                GESF = Zero
                PARM = Zero
                Return (SUCC)
            }

            If ((GESF == 0x13))
            {
                GESF = Zero
                PARM = Zero
                Return (SUCC)
            }

            If ((GESF == 0x14))
            {
                PAVP = (PARM & 0x0F)
                GESF = Zero
                PARM = Zero
                Return (SUCC)
            }

            If ((GESF == 0x15))
            {
                If ((PARM == One))
                {
                    \_SB.PCI0.AUDE |= 0x20
                    \_SB.PCI0.HDAU.ARST ()
                    \_SB.PCI0.HDAU.ABWA (One)
                    \_SB.PCI0.HDAU.ASTR ()
                    \_SB.PCI0.HDAU.AINI ()
                    \_SB.PCI0.HDAU.CXDC ()
                    \_SB.PCI0.HDAU.ABWA (Zero)
                    Notify (\_SB.PCI0, Zero)
                }

                If ((PARM == Zero))
                {
                    \_SB.PCI0.AUDE &= 0xDF
                    Notify (\_SB.PCI0, Zero)
                }

                GESF = Zero
                PARM = Zero
                Return (SUCC)
            }

            GESF = Zero
            Return (SUCC)
        }

        Method (PDRD, 0, NotSerialized)
        {
            If (!DRDY)
            {
                Sleep (ASLP)
            }

            Return (!DRDY)
        }

        Method (PSTS, 0, NotSerialized)
        {
            If ((CSTS > 0x02))
            {
                Sleep (ASLP)
            }

            Return ((CSTS == 0x03))
        }

        Method (GNOT, 2, NotSerialized)
        {
            If (PDRD ())
            {
                Return (One)
            }

            CEVT = Arg0
            CSTS = 0x03
            If (((CHPD == Zero) && (Arg1 == Zero)))
            {
                If ((Arg0 != One))
                {
                    If ((\WXPF && !\WVIS))
                    {
                        Notify (\_SB.PCI0, Arg1)
                    }
                    Else
                    {
                        Notify (\_SB.PCI0.IGPU, Arg1)
                    }
                }
            }

            Notify (\_SB.PCI0.IGPU, 0x80)
            Return (Zero)
        }

        Method (GHDS, 1, NotSerialized)
        {
            TIDX = Arg0
            Return (GNOT (One, Zero))
        }

        Method (GLID, 1, NotSerialized)
        {
            CLID = Arg0
            Return (GNOT (0x02, Zero))
        }

        Method (GLIS, 1, NotSerialized)
        {
            CLID = Arg0
            Return (Zero)
        }

        Method (GDCK, 1, NotSerialized)
        {
            CDCK = Arg0
            Return (GNOT (0x04, 0x80))
        }

        Method (GDCS, 1, NotSerialized)
        {
            CDCK = Arg0
        }

        Method (PARD, 0, NotSerialized)
        {
            If (!ARDY)
            {
                Sleep (ASLP)
            }

            Return (!ARDY)
        }

        Method (AINT, 2, NotSerialized)
        {
            If (!(TCHE & (One << Arg0)))
            {
                Return (One)
            }

            If (PARD ())
            {
                Return (One)
            }

            If ((Arg0 == 0x02))
            {
                PFIT ^= 0x07
                PFIT |= 0x80000000
                ASLC = 0x04
            }
            ElseIf ((Arg0 == One))
            {
                BCLP = Arg1
                BCLP |= 0x80000000
                ASLC = 0x0A
            }
            ElseIf ((Arg0 == 0x03))
            {
                PFMB = Arg1
                PFMB |= 0x80000100
                ASLC = 0x08
            }
            ElseIf ((Arg0 == Zero))
            {
                ALSI = Arg1
                ASLC = One
            }
            Else
            {
                Return (One)
            }

            ASLE = One
            Return (Zero)
        }
    }
}

