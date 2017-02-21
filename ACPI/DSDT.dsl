/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of DSDT, Tue Jan 31 13:33:02 2017
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x00011E6F (73327)
 *     Revision         0x01 **** 32-bit table (V1), no 64-bit math support
 *     Checksum         0x2A
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "TP-J9   "
 *     OEM Revision     0x00002230 (8752)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */
DefinitionBlock ("", "DSDT", 1, "LENOVO", "TP-J9   ", 0x00002230)
{
    External (_PR_.CPU0._PSS, PkgObj)
    External (_SB_.IAOE.GAOS, UnknownObj)    // Warning: Unknown object
    External (_SB_.IAOE.GSWR, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCCD, UnknownObj)
    External (_SB_.PCCD.PENB, IntObj)
    External (_SB_.PCI0.SAT1.PRIM.GTME, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCI0.SAT1.PRT2, UnknownObj)
    External (_SB_.PCI0.SAT1.SCND.GTME, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCI0.SAT1.SCND.MSTR, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCI0.IGPU.AINT, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.IGPU.CADL, FieldUnitObj)
    External (_SB_.PCI0.IGPU.CAL2, FieldUnitObj)
    External (_SB_.PCI0.IGPU.CAL3, FieldUnitObj)
    External (_SB_.PCI0.IGPU.CAL4, FieldUnitObj)
    External (_SB_.PCI0.IGPU.CAL5, FieldUnitObj)
    External (_SB_.PCI0.IGPU.CAL6, FieldUnitObj)
    External (_SB_.PCI0.IGPU.CAL7, FieldUnitObj)
    External (_SB_.PCI0.IGPU.CAL8, FieldUnitObj)
    External (_SB_.PCI0.IGPU.CLID, FieldUnitObj)
    External (_SB_.PCI0.IGPU.CPDL, FieldUnitObj)
    External (_SB_.PCI0.IGPU.CPL2, FieldUnitObj)
    External (_SB_.PCI0.IGPU.CPL3, FieldUnitObj)
    External (_SB_.PCI0.IGPU.CPL4, FieldUnitObj)
    External (_SB_.PCI0.IGPU.CPL5, FieldUnitObj)
    External (_SB_.PCI0.IGPU.CPL6, FieldUnitObj)
    External (_SB_.PCI0.IGPU.CPL7, FieldUnitObj)
    External (_SB_.PCI0.IGPU.CPL8, FieldUnitObj)
    External (_SB_.PCI0.IGPU.DDL2, FieldUnitObj)
    External (_SB_.PCI0.IGPU.DDL3, FieldUnitObj)
    External (_SB_.PCI0.IGPU.DDL4, FieldUnitObj)
    External (_SB_.PCI0.IGPU.DDL5, FieldUnitObj)
    External (_SB_.PCI0.IGPU.DDL6, FieldUnitObj)
    External (_SB_.PCI0.IGPU.DDL7, FieldUnitObj)
    External (_SB_.PCI0.IGPU.DDL8, FieldUnitObj)
    External (_SB_.PCI0.IGPU.DIDL, FieldUnitObj)
    External (_SB_.PCI0.IGPU.DRDY, FieldUnitObj)
    External (_SB_.PCI0.IGPU.GDCK, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.IGPU.GHDS, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.IGPU.GLIS, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.IGPU.GNOT, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.IGPU.GSCI, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.IGPU.GSSE, FieldUnitObj)
    External (_SB_.PCI0.IGPU.NADL, FieldUnitObj)
    External (_SB_.PCI0.IGPU.NDL2, FieldUnitObj)
    External (_SB_.PCI0.IGPU.NDL3, FieldUnitObj)
    External (_SB_.PCI0.IGPU.NDL4, FieldUnitObj)
    External (_SB_.PCI0.IGPU.NDL5, FieldUnitObj)
    External (_SB_.PCI0.IGPU.NDL6, FieldUnitObj)
    External (_SB_.PCI0.IGPU.NDL7, FieldUnitObj)
    External (_SB_.PCI0.IGPU.NDL8, FieldUnitObj)
    External (_SB_.PCI0.IGPU.STAT, FieldUnitObj)
    External (_SB_.PCI0.IGPU.TCHE, FieldUnitObj)
    External (NDID, FieldUnitObj)
    External (PDC0, IntObj)
    External (PDC1, IntObj)
    External (PDC2, IntObj)
    External (PDC3, IntObj)
    External (PDC4, IntObj)
    External (PDC5, IntObj)
    External (PDC6, IntObj)
    External (PDC7, IntObj)

    Scope (\_PR)
    {
        Processor (CPU0, 0x01, 0x00001810, 0x06) {}
        Processor (CPU1, 0x02, 0x00001810, 0x06) {}
        Processor (CPU2, 0x03, 0x00001810, 0x06) {}
        Processor (CPU3, 0x04, 0x00001810, 0x06) {}
        Processor (CPU4, 0x05, 0x00001810, 0x06) {}
        Processor (CPU5, 0x06, 0x00001810, 0x06) {}
        Processor (CPU6, 0x07, 0x00001810, 0x06) {}
        Processor (CPU7, 0x08, 0x00001810, 0x06) {}
    }

    Scope (\)
    {
        Method (PNTF, 1, NotSerialized)
        {
            If (((Arg0 == 0x80) && !\OSPX))
            {
                If ((\PPMF & 0x01))
                {
                    If (\CPPX)
                    {
                        Notify (\_SB.PCCD, 0x82)
                    }
                }
            }
            ElseIf ((\PPMF & 0x0200))
            {
                If ((((PDC0 & 0x08) && ((Arg0 == 0x80) || (Arg0 == 0x82))) || ((PDC0 & 0x10) && (Arg0 == 0x81))))
                {
                    Notify (\_PR.CPU0, Arg0)
                }

                If ((((PDC1 & 0x08) && ((Arg0 == 0x80) || (Arg0 == 0x82))) || ((PDC1 & 0x10) && (Arg0 == 0x81))))
                {
                    Notify (\_PR.CPU1, Arg0)
                }

                If ((((PDC2 & 0x08) && ((Arg0 == 0x80) || (Arg0 == 0x82))) || ((PDC2 & 0x10) && (Arg0 == 0x81))))
                {
                    Notify (\_PR.CPU2, Arg0)
                }

                If ((((PDC3 & 0x08) && ((Arg0 == 0x80) || (Arg0 == 0x82))) || ((PDC3 & 0x10) && (Arg0 == 0x81))))
                {
                    Notify (\_PR.CPU3, Arg0)
                }

                If ((((PDC4 & 0x08) && ((Arg0 == 0x80) || (Arg0 == 0x82))) || ((PDC4 & 0x10) && (Arg0 == 0x81))))
                {
                    Notify (\_PR.CPU4, Arg0)
                }

                If ((((PDC5 & 0x08) && ((Arg0 == 0x80) || (Arg0 == 0x82))) || ((PDC5 & 0x10) && (Arg0 == 0x81))))
                {
                    Notify (\_PR.CPU5, Arg0)
                }

                If ((((PDC6 & 0x08) && ((Arg0 == 0x80) || (Arg0 == 0x82))) || ((PDC6 & 0x10) && (Arg0 == 0x81))))
                {
                    Notify (\_PR.CPU6, Arg0)
                }

                If ((((PDC7 & 0x08) && ((Arg0 == 0x80) || (Arg0 == 0x82))) || ((PDC7 & 0x10) && (Arg0 == 0x81))))
                {
                    Notify (\_PR.CPU7, Arg0)
                }
            }
            ElseIf (((Arg0 == 0x80) || ((Arg0 == 0x81) || (Arg0 == 0x82))))
            {
                Notify (\_PR.CPU0, Arg0)
            }
        }
    }

    OperationRegion (MNVS, SystemMemory, 0xBCF7D018, 0x1000)
    Field (MNVS, DWordAcc, NoLock, Preserve)
    {
        Offset (0xD00), 
        GAPA,   32, 
        GAPL,   32, 
        DCKI,   32, 
        DCKS,   32, 
        VCDL,   1, 
        VCDC,   1, 
        VCDT,   1, 
        VCDD,   1, 
            ,   1, 
        VCSS,   1, 
        VCDB,   1, 
        VCIN,   1, 
        VVPO,   8, 
        BRTN,   8, 
        BRLV,   8, 
        CDFL,   8, 
        CDAH,   8, 
        PMOD,   2, 
        PDIR,   1, 
        PDMA,   1, 
        Offset (0xD17), 
        LFDC,   1, 
        Offset (0xD18), 
        C2NA,   1, 
        C3NA,   1, 
        C4NA,   1, 
        C6NA,   1, 
        C7NA,   1, 
        Offset (0xD19), 
        Offset (0xD1A), 
            ,   2, 
            ,   1, 
        NHPS,   1, 
        NPME,   1, 
        Offset (0xD1B), 
        UOPT,   8, 
        BTID,   32, 
        DPP0,   1, 
        DPP1,   1, 
        DPP2,   1, 
        DPP3,   1, 
        DPP4,   1, 
        DPP5,   1, 
        Offset (0xD21), 
        Offset (0xD22), 
        TCRT,   16, 
        TPSV,   16, 
        TTC1,   16, 
        TTC2,   16, 
        TTSP,   16, 
        SRAH,   8, 
        SRHE,   8, 
        SRE1,   8, 
        SRE2,   8, 
        SRE3,   8, 
        SRE4,   8, 
        SRE5,   8, 
        SRE6,   8, 
        SRU1,   8, 
        SRU2,   8, 
        SRU3,   8, 
        SRU7,   8, 
        SRU4,   8, 
        SRU5,   8, 
        SRU8,   8, 
        SRPB,   8, 
        SRLP,   8, 
        SRSA,   8, 
        SRSM,   8, 
        CWAC,   1, 
        CWAS,   1, 
        CWUE,   1, 
        CWUS,   1, 
        Offset (0xD40), 
        CWAP,   16, 
        CWAT,   16, 
        DBGC,   1, 
        Offset (0xD45), 
        FS1L,   16, 
        FS1M,   16, 
        FS1H,   16, 
        FS2L,   16, 
        FS2M,   16, 
        FS2H,   16, 
        FS3L,   16, 
        FS3M,   16, 
        FS3H,   16, 
        TATC,   1, 
            ,   6, 
        TATL,   1, 
        TATW,   8, 
        TNFT,   4, 
        TNTT,   4, 
        TDFA,   4, 
        TDTA,   4, 
        TDFD,   4, 
        TDTD,   4, 
        TCFA,   4, 
        TCTA,   4, 
        TCFD,   4, 
        TCTD,   4, 
        TSFT,   4, 
        TSTT,   4, 
        TIT0,   8, 
        TCR0,   16, 
        TPS0,   16, 
        TIT1,   8, 
        TCR1,   16, 
        TPS1,   16, 
        TIT2,   8, 
        TCR2,   16, 
        TPS2,   16, 
        TIF0,   8, 
        TIF1,   8, 
        TIF2,   8, 
        Offset (0xD78), 
        BTHI,   1, 
        Offset (0xD79), 
        HDIR,   1, 
        HDEH,   1, 
        HDSP,   1, 
        HDPP,   1, 
        HDUB,   1, 
        HDMC,   1, 
        NFCF,   1, 
        Offset (0xD7A), 
        TPME,   8, 
        BIDE,   4, 
        IDET,   4, 
            ,   1, 
        DTSE,   1, 
        Offset (0xD7D), 
        DTS0,   8, 
        DTS1,   8, 
        DT00,   1, 
        DT01,   1, 
        DT02,   1, 
        DT03,   1, 
        Offset (0xD80), 
        LIDB,   1, 
        C4WR,   1, 
        C4AC,   1, 
        ODDX,   1, 
        CMPR,   1, 
        ILNF,   1, 
        PLUX,   1, 
        Offset (0xD81), 
        Offset (0xD8C), 
            ,   4, 
            ,   1, 
        IDMM,   1, 
        Offset (0xD8D), 
            ,   3, 
            ,   1, 
            ,   1, 
        LIDS,   1, 
        Offset (0xD8E), 
        Offset (0xD8F), 
            ,   4, 
        Offset (0xD90), 
        TCG0,   1, 
        TCG1,   1, 
        Offset (0xD91), 
        SWGP,   8, 
        IPMS,   8, 
        IPMB,   120, 
        IPMR,   24, 
        IPMO,   24, 
        IPMA,   8, 
        VIGD,   1, 
        VDSC,   1, 
            ,   2, 
        VDSP,   1, 
        Offset (0xDAA), 
        Offset (0xDAD), 
        ASFT,   8, 
        PL1L,   8, 
        PL1M,   8, 
        CHKC,   32, 
        CHKE,   32, 
        ATRB,   32, 
        Offset (0xDBD), 
        PPCR,   8, 
        TPCR,   5, 
        Offset (0xDBF), 
        Offset (0xDCE), 
        CTDP,   8, 
        PPCA,   8, 
        TPCA,   5, 
        Offset (0xDD1), 
        BFWB,   296, 
        OSPX,   1, 
        OSC4,   1, 
        CPPX,   1, 
        Offset (0xDF7), 
        SPEN,   1, 
        SCRM,   1, 
        GFPL,   1, 
        ETAU,   1, 
        IHBC,   1, 
        APMD,   1, 
        APMF,   1, 
        Offset (0xDF8), 
        FTPS,   8, 
        HIST,   8, 
        LPST,   8, 
        LWST,   8, 
        Offset (0xDFF), 
        MTAU,   8, 
        Offset (0xE20), 
        HPET,   32, 
        PKLI,   16, 
        VLCX,   16, 
        VNIT,   8, 
        VBD0,   8, 
        VBDT,   128, 
        VBPL,   16, 
        VBPH,   16, 
        VBML,   8, 
        VBMH,   8, 
        VEDI,   1024, 
        PDCI,   16, 
        ISCG,   32, 
        ISSP,   1, 
        ISWK,   2, 
        Offset (0xEC7), 
        SHA1,   160, 
        FFDT,   1, 
        Offset (0xEDC), 
        LWCP,   1, 
        LWEN,   1, 
        IOCP,   1, 
        IOEN,   1, 
        IOST,   1, 
        Offset (0xEDD), 
        USBR,   1, 
        Offset (0xEDE), 
        Offset (0xEDF), 
        Offset (0xEE1), 
        BT2T,   1, 
        Offset (0xEE2), 
        TPPP,   8, 
        TPPC,   8, 
        WKRS,   8, 
        FNWK,   8, 
        USBC,   8, 
        XHCC,   8, 
        ODDF,   8
    }

    Field (MNVS, ByteAcc, NoLock, Preserve)
    {
        Offset (0xB00), 
        WITM,   8, 
        WSEL,   8, 
        WLS0,   8, 
        WLS1,   8, 
        WLS2,   8, 
        WLS3,   8, 
        WLS4,   8, 
        WLS5,   8, 
        WLS6,   8, 
        WLS7,   8, 
        WLS8,   8, 
        WLS9,   8, 
        WLSA,   8, 
        WLSB,   8, 
        WLSC,   8, 
        WLSD,   8, 
        WENC,   8, 
        WKBD,   8, 
        WPTY,   8, 
        WPAS,   1032, 
        WPNW,   1032, 
        WSPM,   8, 
        WSPS,   8, 
        WSMN,   8, 
        WSMX,   8, 
        WSEN,   8, 
        WSKB,   8, 
        WASB,   8, 
        WASI,   16, 
        WASD,   8, 
        WASS,   32
    }

    Field (MNVS, ByteAcc, NoLock, Preserve)
    {
        Offset (0xA00), 
        DBGS,   1024
    }

    OperationRegion (OEMN, SystemMemory, 0xBCF6AF98, 0x0014)
    Field (OEMN, AnyAcc, Lock, Preserve)
    {
        BRID,   8, 
        OPID,   8, 
        OSID,   8, 
        CPPS,   8, 
        CPUT,   8, 
        ECIF,   8, 
        ORV1,   112
    }

    OperationRegion (GNVS, SystemMemory, 0xBCF6BC18, 0x02B0)
    Field (GNVS, AnyAcc, Lock, Preserve)
    {
        OSYS,   16, 
        SMIF,   8, 
        PRM0,   8, 
        PRM1,   8, 
        Offset (0x0F), 
        PWRS,   8, 
        Offset (0x1E), 
        Offset (0x25), 
        REVN,   8, 
        IFFS,   8, 
        Offset (0x28), 
        APIC,   8, 
        TCNT,   8, 
        PCP0,   8, 
        PCP1,   8, 
        PPCM,   8, 
        PPMF,   32, 
        C67L,   8, 
        Offset (0x47), 
        TPMP,   8, 
        MORD,   8, 
        TCGP,   8, 
        PPRP,   32, 
        PPRQ,   8, 
        LPPR,   8, 
        GTF0,   56, 
        GTF2,   56, 
        IDEM,   8, 
        GTF1,   56, 
        BID,    16, 
        PLID,   8, 
        ECTG,   8, 
        ISCT,   8, 
        SLDR,   32, 
        WAKR,   8, 
        OSCC,   8, 
        NEXP,   8, 
        SBV1,   8, 
        SBV2,   8, 
        Offset (0x7A), 
        DSEN,   8, 
        ECON,   8, 
        Offset (0x7D), 
        CTYP,   8, 
        L01C,   8, 
        VFN0,   8, 
        VFN1,   8, 
        VFN2,   8, 
        VFN3,   8, 
        VFN4,   8, 
        VFN5,   8, 
        VFN6,   8, 
        VFN7,   8, 
        VFN8,   8, 
        VFN9,   8, 
        Offset (0x8F), 
        ATMC,   8, 
        PTMC,   8, 
        ATRA,   8, 
        PTRA,   8, 
        PNHM,   32, 
        TBAB,   32, 
        TBAH,   32, 
        RTIP,   8, 
        TSOD,   8, 
        ATPC,   8, 
        PTPC,   8, 
        PFLV,   8, 
        BREV,   8, 
        PDTS,   8, 
        PKGA,   8, 
        PAMT,   8, 
        AC0F,   8, 
        AC1F,   8, 
        DTS3,   8, 
        DTS4,   8, 
        Offset (0xB0), 
        LTR1,   8, 
        LTR2,   8, 
        LTR3,   8, 
        LTR4,   8, 
        LTR5,   8, 
        LTR6,   8, 
        LTR7,   8, 
        LTR8,   8, 
        OBF1,   8, 
        OBF2,   8, 
        OBF3,   8, 
        OBF4,   8, 
        OBF5,   8, 
        OBF6,   8, 
        OBF7,   8, 
        OBF8,   8, 
        XHC,   8, 
        XTUB,   32, 
        XTUS,   32, 
        XMPB,   32, 
        DDRF,   8, 
        RTD3,   8, 
        PEP0,   8, 
        PEP3,   8, 
        DPTF,   8, 
        SADE,   8, 
        SACR,   8, 
        SAHT,   8, 
        PCHD,   8, 
        PCHC,   8, 
        PCHH,   8, 
        Offset (0xDB), 
        ECEU,   8, 
        TGFG,   16, 
        MEMD,   8, 
        MEMC,   8, 
        MEMH,   8, 
        FND1,   8, 
        FND2,   8, 
        AMBD,   8, 
        AMAT,   8, 
        AMPT,   8, 
        AMCT,   8, 
        AMHT,   8, 
        SKDE,   8, 
        SKAT,   8, 
        SKPT,   8, 
        SKCT,   8, 
        SKHT,   8, 
        EFDE,   8, 
        EFAT,   8, 
        EFPT,   8, 
        EFCT,   8, 
        EFHT,   8, 
        VRDE,   8, 
        VRAT,   8, 
        VRPT,   8, 
        VRCT,   8, 
        VRHT,   8, 
        DPAP,   8, 
        DPPP,   8, 
        DPCP,   8, 
        DCMP,   8, 
        TRTV,   8, 
        LPOE,   8, 
        LPOP,   8, 
        LPOS,   8, 
        LPOW,   8, 
        LPER,   8, 
        PPSZ,   32, 
        DISE,   8, 
        PFMA,   64, 
        PFMS,   8, 
        PFIA,   16, 
        ICNF,   8, 
        DSP0,   32, 
        DSP1,   32, 
        NFCE,   8, 
        CODS,   8, 
        SNHE,   8, 
        S0ID,   8, 
        CTDB,   8, 
        Offset (0x121), 
        TBTE,   8, 
        Offset (0x207), 
        PWRE,   8, 
        PWRP,   8, 
        XHPR,   8, 
        SDS0,   8, 
        SDS1,   16, 
        SDS2,   8, 
        SDS3,   8, 
        SDS4,   8, 
        SDS5,   8, 
        Offset (0x212), 
        RIC0,   8, 
        PEPY,   8, 
        DVS0,   8, 
        DVS1,   8, 
        DVS2,   8, 
        DVS3,   8, 
        GBSX,   8, 
        IUBE,   8, 
        IUCE,   8, 
        IUDE,   8, 
        ECNO,   8, 
        AUDD,   16, 
        DSPD,   16, 
        IC0D,   16, 
        IC1D,   16, 
        IC1S,   16, 
        VRRD,   16, 
        PSCP,   8, 
        RWAG,   8, 
        I20D,   16, 
        I21D,   16, 
        Offset (0x231), 
        RCG0,   8, 
        ECDB,   8, 
        P2ME,   8, 
        SSH0,   16, 
        SSL0,   16, 
        SSD0,   16, 
        FMH0,   16, 
        FML0,   16, 
        FMD0,   16, 
        FPH0,   16, 
        FPL0,   16, 
        FPD0,   16, 
        SSH1,   16, 
        SSL1,   16, 
        SSD1,   16, 
        FMH1,   16, 
        FML1,   16, 
        FMD1,   16, 
        FPH1,   16, 
        FPL1,   16, 
        FPD1,   16, 
        M0C0,   16, 
        M1C0,   16, 
        M2C0,   16, 
        M0C1,   16, 
        M1C1,   16, 
        M2C1,   16, 
        M0C2,   16, 
        M1C2,   16, 
        M0C3,   16, 
        M1C3,   16, 
        M0C4,   16, 
        M1C4,   16, 
        M0C5,   16, 
        M1C5,   16, 
        TBSF,   8, 
        GIRQ,   32, 
        DMTP,   8, 
        DMTD,   8, 
        DMSH,   8, 
        LANP,   8, 
        Offset (0x27E), 
        SHSB,   8, 
        PLCS,   8, 
        PLVL,   16, 
        GN1E,   8, 
        G1AT,   8, 
        G1PT,   8, 
        G1CT,   8, 
        G1HT,   8, 
        GN2E,   8, 
        G2AT,   8, 
        G2PT,   8, 
        G2CT,   8, 
        G2HT,   8, 
        WWSD,   8, 
        CVSD,   8, 
        SSDD,   8, 
        INLD,   8, 
        IFAT,   8, 
        IFPT,   8, 
        IFCT,   8, 
        IFHT,   8, 
        DOSD,   8, 
        USBH,   8, 
        BCV4,   8, 
        WTV0,   8, 
        WTV1,   8, 
        APFU,   8, 
        SOHP,   8, 
        NOHP,   8, 
        TBSE,   8, 
        WKFN,   8, 
        PEPC,   16, 
        VRSD,   16, 
        PB1E,   8, 
        WAND,   8, 
        WWAT,   8, 
        WWPT,   8, 
        WWCT,   8, 
        WWHT,   8, 
        Offset (0x2AD), 
        MPLT,   16, 
        GR13,   8
    }

    Name (RPA0, 0x001C0000)
    Name (RPA1, 0x001C0001)
    Name (RPA2, 0x001C0002)
    Name (RPA3, 0x001C0003)
    Name (RPA4, 0x001C0004)
    Name (RPA5, 0x001C0005)
    Name (RPA6, 0x001C0006)
    Name (RPA7, 0x001C0007)
    Name (PCHS, 0x00000001)
    Scope (\_SB)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (CondRefOf (\_OSI, Local0))
            {
                If (\_OSI ("Windows 2001"))
                {
                    \WNTF = 0x01
                    \WXPF = 0x01
                    \WSPV = 0x00
                    OSYS = 0x07D1
                }

                If (\_OSI ("Windows 2001 SP1"))
                {
                    \WSPV = 0x01
                    OSYS = 0x07D1
                }

                If (\_OSI ("Windows 2001 SP2"))
                {
                    \WSPV = 0x02
                    OSYS = 0x07D2
                }

                If (\_OSI ("Windows 2006"))
                {
                    \WVIS = 0x01
                    OSYS = 0x07D6
                }

                If (\_OSI ("Windows 2009"))
                {
                    \WIN7 = 0x01
                    OSYS = 0x07D9
                }

                If(LOr(_OSI("Darwin"),_OSI("Windows 2012")))
                {
                    \WIN8 = 0x01
                    OSYS = 0x07DC
                }

                If (\_OSI ("Windows 2013"))
                {
                    \WIN8 = 0x01
                    OSYS = 0x07DD
                }

                If (\_OSI ("Linux"))
                {
                    \LNUX = 0x01
                    OSYS = 0x03E8
                }

                If (\_OSI ("FreeBSD"))
                {
                    \LNUX = 0x01
                    OSYS = 0x03E8
                }
            }
            ElseIf ((\SCMP (\_OS, "Microsoft Windows NT") == Zero))
            {
                \WNTF = 0x01
            }

            If ((\_REV >= 0x02))
            {
                \H8DR = 0x01
            }

            \OSIF = 0x01
            \PWRS = \_SB.PCI0.LPC.EC.AC._PSR ()
            \_SB.PCI0.LPC.MOU.MHID ()
            If (\LNUX)
            {
                \_SB.PCI0.LPC.EC.SAUM (0x02)
                \UCMS (0x1C)
            }

            \_SB.PCI0.RID = \SRAH
            If (VIGD)
            {
                \_SB.PCI0.IGPU.RID = \SRHE
            }
            Else
            {
                \_SB.PCI0.PEG.RID = \SRHE
            }

            \_SB.PCI0.EXP1.RID = \SRE1
            \_SB.PCI0.EXP3.RID = \SRE3
            \_SB.PCI0.EXP4.RID = \SRE4
            \_SB.PCI0.EXP5.RID = \SRE4
            \_SB.PCI0.EHC1.RID = \SRU7
            \_SB.PCI0.LPC.RID = \SRLP
            \_SB.PCI0.SAT1.RID = \SRSA
            \_SB.PCI0.SMBU.RID = \SRSM
            If ((\FNWK == 0x01))
            {
                If (\H8DR)
                {
                    \_SB.PCI0.LPC.EC.HWFN = 0x00
                }
                Else
                {
                    \MBEC (0x32, 0xEF, 0x00)
                }
            }

            \UCMS (0x1D)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            If ((Arg0 == ToUUID ("0811b06e-4a27-44f9-8d60-3cbbc22e7b48") /* Platform-wide Capabilities */))
            {
                If ((Arg1 == One))
                {
                    If ((CAP0 & 0x04))
                    {
                        If ((RTD3 == 0x00))
                        {
                            CAP0 &= 0x3B
                            STS0 |= 0x10
                        }
                    }

                    If ((CAP0 & 0x20))
                    {
                        If (CondRefOf (\_SB.PCCD.PENB))
                        {
                            If ((\_SB.PCCD.PENB == 0x00))
                            {
                                CAP0 &= 0x1F
                                STS0 |= 0x10
                            }

                            If ((\_SB.PCCD.PENB == 0x01))
                            {
                                \CPPX = 0x01
                            }
                        }
                        Else
                        {
                            CAP0 &= 0x1F
                            STS0 |= 0x10
                        }
                    }
                }
                Else
                {
                    STS0 &= 0xFFFFFF00
                    STS0 |= 0x0A
                }
            }
            Else
            {
                STS0 &= 0xFFFFFF00
                STS0 |= 0x06
            }

            Return (Arg3)
        }

        Device (LNKA)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x01)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (!VPIR (\_SB.PCI0.LPC.PIRA))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                \_SB.PCI0.LPC.PIRA |= 0x80
            }

            Name (BUFA, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y00)
                    {}
            })
            CreateWordField (BUFA, \_SB.LNKA._Y00._INT, IRA1)  // _INT: Interrupts
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (\_SB.PCI0.LPC.PIRA & 0x8F)
                If (VPIR (Local0))
                {
                    IRA1 = (0x01 << Local0)
                }
                Else
                {
                    IRA1 = 0x00
                }

                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, 0x01, IRA2)
                FindSetRightBit (IRA2, Local0)
                Local1 = (\_SB.PCI0.LPC.PIRA & 0x70)
                Local1 |= Local0--
                \_SB.PCI0.LPC.PIRA = Local1
            }
        }

        Device (LNKB)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (!VPIR (\_SB.PCI0.LPC.PIRB))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                \_SB.PCI0.LPC.PIRB |= 0x80
            }

            Name (BUFB, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y01)
                    {}
            })
            CreateWordField (BUFB, \_SB.LNKB._Y01._INT, IRB1)  // _INT: Interrupts
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (\_SB.PCI0.LPC.PIRB & 0x8F)
                If (VPIR (Local0))
                {
                    IRB1 = (0x01 << Local0)
                }
                Else
                {
                    IRB1 = 0x00
                }

                Return (BUFB)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, 0x01, IRB2)
                FindSetRightBit (IRB2, Local0)
                Local1 = (\_SB.PCI0.LPC.PIRB & 0x70)
                Local1 |= Local0--
                \_SB.PCI0.LPC.PIRB = Local1
            }
        }

        Device (LNKC)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (!VPIR (\_SB.PCI0.LPC.PIRC))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                \_SB.PCI0.LPC.PIRC |= 0x80
            }

            Name (BUFC, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y02)
                    {}
            })
            CreateWordField (BUFC, \_SB.LNKC._Y02._INT, IRC1)  // _INT: Interrupts
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (\_SB.PCI0.LPC.PIRC & 0x8F)
                If (VPIR (Local0))
                {
                    IRC1 = (0x01 << Local0)
                }
                Else
                {
                    IRC1 = 0x00
                }

                Return (BUFC)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, 0x01, IRC2)
                FindSetRightBit (IRC2, Local0)
                Local1 = (\_SB.PCI0.LPC.PIRC & 0x70)
                Local1 |= Local0--
                \_SB.PCI0.LPC.PIRC = Local1
            }
        }

        Device (LNKD)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (!VPIR (\_SB.PCI0.LPC.PIRD))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                \_SB.PCI0.LPC.PIRD |= 0x80
            }

            Name (BUFD, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y03)
                    {}
            })
            CreateWordField (BUFD, \_SB.LNKD._Y03._INT, IRD1)  // _INT: Interrupts
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (\_SB.PCI0.LPC.PIRD & 0x8F)
                If (VPIR (Local0))
                {
                    IRD1 = (0x01 << Local0)
                }
                Else
                {
                    IRD1 = 0x00
                }

                Return (BUFD)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, 0x01, IRD2)
                FindSetRightBit (IRD2, Local0)
                Local1 = (\_SB.PCI0.LPC.PIRD & 0x70)
                Local1 |= Local0--
                \_SB.PCI0.LPC.PIRD = Local1
            }
        }

        Device (LNKE)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x05)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (!VPIR (\_SB.PCI0.LPC.PIRE))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                \_SB.PCI0.LPC.PIRE |= 0x80
            }

            Name (BUFE, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y04)
                    {}
            })
            CreateWordField (BUFE, \_SB.LNKE._Y04._INT, IRE1)  // _INT: Interrupts
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (\_SB.PCI0.LPC.PIRE & 0x8F)
                If (VPIR (Local0))
                {
                    IRE1 = (0x01 << Local0)
                }
                Else
                {
                    IRE1 = 0x00
                }

                Return (BUFE)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, 0x01, IRE2)
                FindSetRightBit (IRE2, Local0)
                Local1 = (\_SB.PCI0.LPC.PIRE & 0x70)
                Local1 |= Local0--
                \_SB.PCI0.LPC.PIRE = Local1
            }
        }

        Device (LNKF)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x06)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (!VPIR (\_SB.PCI0.LPC.PIRF))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                \_SB.PCI0.LPC.PIRF |= 0x80
            }

            Name (BUFF, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y05)
                    {}
            })
            CreateWordField (BUFF, \_SB.LNKF._Y05._INT, IRF1)  // _INT: Interrupts
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (\_SB.PCI0.LPC.PIRF & 0x8F)
                If (VPIR (Local0))
                {
                    IRF1 = (0x01 << Local0)
                }
                Else
                {
                    IRF1 = 0x00
                }

                Return (BUFF)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, 0x01, IRF2)
                FindSetRightBit (IRF2, Local0)
                Local1 = (\_SB.PCI0.LPC.PIRF & 0x70)
                Local1 |= Local0--
                \_SB.PCI0.LPC.PIRF = Local1
            }
        }

        Device (LNKG)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x07)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (!VPIR (\_SB.PCI0.LPC.PIRG))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                \_SB.PCI0.LPC.PIRG |= 0x80
            }

            Name (BUFG, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y06)
                    {}
            })
            CreateWordField (BUFG, \_SB.LNKG._Y06._INT, IRG1)  // _INT: Interrupts
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (\_SB.PCI0.LPC.PIRG & 0x8F)
                If (VPIR (Local0))
                {
                    IRG1 = (0x01 << Local0)
                }
                Else
                {
                    IRG1 = 0x00
                }

                Return (BUFG)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, 0x01, IRG2)
                FindSetRightBit (IRG2, Local0)
                Local1 = (\_SB.PCI0.LPC.PIRG & 0x70)
                Local1 |= Local0--
                \_SB.PCI0.LPC.PIRG = Local1
            }
        }

        Device (LNKH)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x08)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (!VPIR (\_SB.PCI0.LPC.PIRH))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                \_SB.PCI0.LPC.PIRH |= 0x80
            }

            Name (BUFH, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y07)
                    {}
            })
            CreateWordField (BUFH, \_SB.LNKH._Y07._INT, IRH1)  // _INT: Interrupts
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (\_SB.PCI0.LPC.PIRH & 0x8F)
                If (VPIR (Local0))
                {
                    IRH1 = (0x01 << Local0)
                }
                Else
                {
                    IRH1 = 0x00
                }

                Return (BUFH)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, 0x01, IRH2)
                FindSetRightBit (IRH2, Local0)
                Local1 = (\_SB.PCI0.LPC.PIRH & 0x70)
                Local1 |= Local0--
                \_SB.PCI0.LPC.PIRH = Local1
            }
        }

        Method (VPIR, 1, NotSerialized)
        {
            Local0 = 0x01
            If ((Arg0 & 0x80))
            {
                Local0 = 0x00
            }
            Else
            {
                Local1 = (Arg0 & 0x0F)
                If ((Local1 < 0x03))
                {
                    Local0 = 0x00
                }
                ElseIf (((Local1 == 0x08) || (Local1 == 0x0D)))
                {
                    Local0 = 0x00
                }
            }

            Return (Local0)
        }

        Device (MEM)
        {
            Name (_HID, EisaId ("PNP0C01"))  // _HID: Hardware ID
            Name (MEMS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x000A0000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0x000C0000,         // Address Base
                    0x00000000,         // Address Length
                    _Y08)
                Memory32Fixed (ReadOnly,
                    0x000C4000,         // Address Base
                    0x00000000,         // Address Length
                    _Y09)
                Memory32Fixed (ReadOnly,
                    0x000C8000,         // Address Base
                    0x00000000,         // Address Length
                    _Y0A)
                Memory32Fixed (ReadOnly,
                    0x000CC000,         // Address Base
                    0x00000000,         // Address Length
                    _Y0B)
                Memory32Fixed (ReadOnly,
                    0x000D0000,         // Address Base
                    0x00000000,         // Address Length
                    _Y0C)
                Memory32Fixed (ReadOnly,
                    0x000D4000,         // Address Base
                    0x00000000,         // Address Length
                    _Y0D)
                Memory32Fixed (ReadOnly,
                    0x000D8000,         // Address Base
                    0x00000000,         // Address Length
                    _Y0E)
                Memory32Fixed (ReadOnly,
                    0x000DC000,         // Address Base
                    0x00000000,         // Address Length
                    _Y0F)
                Memory32Fixed (ReadOnly,
                    0x000E0000,         // Address Base
                    0x00000000,         // Address Length
                    _Y10)
                Memory32Fixed (ReadOnly,
                    0x000E4000,         // Address Base
                    0x00000000,         // Address Length
                    _Y11)
                Memory32Fixed (ReadOnly,
                    0x000E8000,         // Address Base
                    0x00000000,         // Address Length
                    _Y12)
                Memory32Fixed (ReadOnly,
                    0x000EC000,         // Address Base
                    0x00000000,         // Address Length
                    _Y13)
                Memory32Fixed (ReadOnly,
                    0x000F0000,         // Address Base
                    0x00010000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0x00100000,         // Address Base
                    0x01EE0000,         // Address Length
                    _Y14)
                Memory32Fixed (ReadOnly,
                    0xFEC00000,         // Address Base
                    0x00140000,         // Address Length
                    _Y15)
                Memory32Fixed (ReadOnly,
                    0xFED4C000,         // Address Base
                    0x012B4000,         // Address Length
                    _Y16)
            })
            CreateDWordField (MEMS, \_SB.MEM._Y08._LEN, MC0L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y09._LEN, MC4L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y0A._LEN, MC8L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y0B._LEN, MCCL)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y0C._LEN, MD0L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y0D._LEN, MD4L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y0E._LEN, MD8L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y0F._LEN, MDCL)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y10._LEN, ME0L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y11._LEN, ME4L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y12._LEN, ME8L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y13._LEN, MECL)  // _LEN: Length
            CreateBitField (MEMS, \_SB.MEM._Y08._RW, MC0W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y09._RW, MC4W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y0A._RW, MC8W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y0B._RW, MCCW)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y0C._RW, MD0W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y0D._RW, MD4W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y0E._RW, MD8W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y0F._RW, MDCW)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y10._RW, ME0W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y11._RW, ME4W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y12._RW, ME8W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y13._RW, MECW)  // _RW_: Read-Write Status
            CreateDWordField (MEMS, \_SB.MEM._Y14._BAS, MEB1)  // _BAS: Base Address
            CreateDWordField (MEMS, \_SB.MEM._Y14._LEN, MEL1)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y15._LEN, MEL2)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y16._LEN, MEL3)  // _LEN: Length
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (\_SB.PCI0.PAM1 & 0x03)
                If (Local0)
                {
                    MC0L = 0x4000
                    If ((Local0 & 0x02))
                    {
                        MC0W = 0x01
                    }
                }

                Local0 = (\_SB.PCI0.PAM1 & 0x30)
                If (Local0)
                {
                    MC4L = 0x4000
                    If ((Local0 & 0x20))
                    {
                        MC4W = 0x01
                    }
                }

                Local0 = (\_SB.PCI0.PAM2 & 0x03)
                If (Local0)
                {
                    MC8L = 0x4000
                    If ((Local0 & 0x02))
                    {
                        MC8W = 0x01
                    }
                }

                Local0 = (\_SB.PCI0.PAM2 & 0x30)
                If (Local0)
                {
                    MCCL = 0x4000
                    If ((Local0 & 0x20))
                    {
                        MCCW = 0x01
                    }
                }

                Local0 = (\_SB.PCI0.PAM3 & 0x03)
                If (Local0)
                {
                    MD0L = 0x4000
                    If ((Local0 & 0x02))
                    {
                        MD0W = 0x01
                    }
                }

                Local0 = (\_SB.PCI0.PAM3 & 0x30)
                If (Local0)
                {
                    MD4L = 0x4000
                    If ((Local0 & 0x20))
                    {
                        MD4W = 0x01
                    }
                }

                Local0 = (\_SB.PCI0.PAM4 & 0x03)
                If (Local0)
                {
                    MD8L = 0x4000
                    If ((Local0 & 0x02))
                    {
                        MD8W = 0x01
                    }
                }

                Local0 = (\_SB.PCI0.PAM4 & 0x30)
                If (Local0)
                {
                    MDCL = 0x4000
                    If ((Local0 & 0x20))
                    {
                        MDCW = 0x01
                    }
                }

                Local0 = (\_SB.PCI0.PAM5 & 0x03)
                If (Local0)
                {
                    ME0L = 0x4000
                    If ((Local0 & 0x02))
                    {
                        ME0W = 0x01
                    }
                }

                Local0 = (\_SB.PCI0.PAM5 & 0x30)
                If (Local0)
                {
                    ME4L = 0x4000
                    If ((Local0 & 0x20))
                    {
                        ME4W = 0x01
                    }
                }

                Local0 = (\_SB.PCI0.PAM6 & 0x03)
                If (Local0)
                {
                    ME8L = 0x4000
                    If ((Local0 & 0x02))
                    {
                        ME8W = 0x01
                    }
                }

                Local0 = (\_SB.PCI0.PAM6 & 0x30)
                If (Local0)
                {
                    MECL = 0x4000
                    If ((Local0 & 0x20))
                    {
                        MECW = 0x01
                    }
                }

                MEL1 = (\MEMX - MEB1)
                If ((\_SB.PCI0.LPC.TPM._STA () != 0x0F))
                {
                    MEL2 = 0x01400000
                    MEL3 = 0x00
                }

                Return (MEMS)
            }
        }

        Device (LID)
        {
            Name (_HID, EisaId ("PNP0C0D"))  // _HID: Hardware ID
            Method (_LID, 0, NotSerialized)  // _LID: Lid Status
            {
                If (((\ILNF == 0x00) && (\PLUX == 0x00)))
                {
                    If (\H8DR)
                    {
                        Return (\_SB.PCI0.LPC.EC.HPLD)
                    }
                    ElseIf ((\RBEC (0x46) & 0x04))
                    {
                        Return (0x01)
                    }
                    Else
                    {
                        Return (0x00)
                    }
                }
                Else
                {
                    Return (0x01)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                If (\LWCP)
                {
                    Return (Package (0x02)
                    {
                        0x1D, 
                        0x04
                    })
                }
                Else
                {
                    Return (Package (0x02)
                    {
                        0x1D, 
                        0x03
                    })
                }
            }

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (\H8DR)
                {
                    If (Arg0)
                    {
                        \_SB.PCI0.LPC.EC.HWLO = 0x01
                    }
                    Else
                    {
                        \_SB.PCI0.LPC.EC.HWLO = 0x00
                    }
                }
                ElseIf (Arg0)
                {
                    \MBEC (0x32, 0xFF, 0x04)
                }
                Else
                {
                    \MBEC (0x32, 0xFB, 0x00)
                }

                If (\LWCP)
                {
                    If (Arg0)
                    {
                        \LWEN = 0x01
                    }
                    Else
                    {
                        \LWEN = 0x00
                    }
                }
            }
        }

        Scope (\)
        {
            Name (UPC0, Package (0x04)
            {
                0xFF, 
                0x00, 
                0x00, 
                0x00
            })
            Name (PLD0, Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0008 */  0x99, 0x11, 0x80, 0x00, 0x03, 0x00, 0x00, 0x00 
            })
            Name (UPC1, Package (0x04)
            {
                0xFF, 
                0x00, 
                0x00, 
                0x00
            })
            Name (PLD1, Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0008 */  0x91, 0x12, 0x00, 0x01, 0x03, 0x00, 0x00, 0x00 
            })
            Name (UPC2, Package (0x04)
            {
                0xFF, 
                0x00, 
                0x00, 
                0x00
            })
            Name (PLD2, Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0008 */  0x69, 0x0C, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00 
            })
            Name (UPC4, Package (0x04)
            {
                0xFF, 
                0xFF, 
                0x00, 
                0x00
            })
            Name (PLD4, Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0008 */  0x30, 0x1C, 0x80, 0x01, 0x03, 0x00, 0x00, 0x00 
            })
            Name (UPC5, Package (0x04)
            {
                0x00, 
                0x02, 
                0x00, 
                0x00
            })
            Name (PLD5, Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0008 */  0x48, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
            })
            Name (UPCN, Package (0x04)
            {
                0x00, 
                0xFF, 
                0x00, 
                0x00
            })
            Name (PLDN, Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0008 */  0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
            })
            Name (UPC9, Package (0x04)
            {
                0xFF, 
                0x00, 
                0x00, 
                0x00
            })
            Name (PLD9, Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0008 */  0x59, 0x12, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00 
            })
            Name (UPCI, Package (0x04)
            {
                0x00, 
                0xFF, 
                0x00, 
                0x00
            })
            Name (PLDI, Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0008 */  0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
            })
            Name (PLDC, Buffer (0x14)
            {
                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0008 */  0x24, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0010 */  0xDD, 0x00, 0x95, 0x00                         
            })
        }

        Device (PCI0)
        {
            Name (_BBN, 0x00)  // _BBN: BIOS Bus Number
            Name (_ADR, 0x00)  // _ADR: Address
            Name (RID, 0x00)
            Name (_S3D, 0x02)  // _S3D: S3 Device State
            Name (LRRT, Package (0x17)
            {
                Package (0x04)
                {
                    0x0001FFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0003FFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x01, 
                    \_SB.LNKD, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x02, 
                    \_SB.LNKC, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x03, 
                    \_SB.LNKB, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0019FFFF, 
                    0x00, 
                    \_SB.LNKE, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001BFFFF, 
                    0x00, 
                    \_SB.LNKG, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x01, 
                    \_SB.LNKB, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x02, 
                    \_SB.LNKC, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x03, 
                    \_SB.LNKD, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x00, 
                    \_SB.LNKH, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x01, 
                    \_SB.LNKD, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x02, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x03, 
                    \_SB.LNKC, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x00, 
                    \_SB.LNKF, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x01, 
                    \_SB.LNKD, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x02, 
                    \_SB.LNKC, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x03, 
                    \_SB.LNKA, 
                    0x00
                }
            })
            Name (ARRT, Package (0x17)
            {
                Package (0x04)
                {
                    0x0001FFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0003FFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x01, 
                    0x00, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x02, 
                    0x00, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x03, 
                    0x00, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0019FFFF, 
                    0x00, 
                    0x00, 
                    0x14
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x001BFFFF, 
                    0x00, 
                    0x00, 
                    0x16
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x01, 
                    0x00, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x02, 
                    0x00, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x03, 
                    0x00, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x00, 
                    0x00, 
                    0x17
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x01, 
                    0x00, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x02, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x03, 
                    0x00, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x00, 
                    0x00, 
                    0x15
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x01, 
                    0x00, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x02, 
                    0x00, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x03, 
                    0x00, 
                    0x10
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (\GPIC)
                {
                    Return (ARRT)
                }
                Else
                {
                    Return (LRRT)
                }
            }

            Name (_HID, EisaId ("PNP0A08"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03"))  // _CID: Compatible ID
            OperationRegion (MHCS, PCI_Config, 0x40, 0xC0)
            Field (MHCS, DWordAcc, NoLock, Preserve)
            {
                Offset (0x40), 
                PAM0,   8, 
                PAM1,   8, 
                PAM2,   8, 
                PAM3,   8, 
                PAM4,   8, 
                PAM5,   8, 
                PAM6,   8, 
                Offset (0x7C), 
                    ,   20, 
                TLUD,   12
            }

            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    ,, _Y25)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0CF7,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0CF8,             // Length
                    ,, , TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0D00,             // Range Minimum
                    0xFFFF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0xF300,             // Length
                    ,, , TypeStatic, DenseTranslation)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000C3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y17, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C4000,         // Range Minimum
                    0x000C7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y18, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C8000,         // Range Minimum
                    0x000CBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y19, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000CC000,         // Range Minimum
                    0x000CFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y1A, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D0000,         // Range Minimum
                    0x000D3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y1B, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D4000,         // Range Minimum
                    0x000D7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y1C, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D8000,         // Range Minimum
                    0x000DBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y1D, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DC000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y1E, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000E3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y1F, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E4000,         // Range Minimum
                    0x000E7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y20, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E8000,         // Range Minimum
                    0x000EBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y21, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000EC000,         // Range Minimum
                    0x000EFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y22, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00100000,         // Range Minimum
                    0xFEBFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0xFEB00000,         // Length
                    ,, _Y23, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0xFED40000,         // Range Minimum
                    0xFED4BFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x0000C000,         // Length
                    ,, _Y24, AddressRangeMemory, TypeStatic)
            })
            CreateDWordField (_CRS, \_SB.PCI0._Y17._LEN, C0LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y18._LEN, C4LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y19._LEN, C8LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y1A._LEN, CCLN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y1B._LEN, D0LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y1C._LEN, D4LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y1D._LEN, D8LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y1E._LEN, DCLN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y1F._LEN, E0LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y20._LEN, E4LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y21._LEN, E8LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y22._LEN, ECLN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y23._MIN, XXMN)  // _MIN: Minimum Base Address
            CreateDWordField (_CRS, \_SB.PCI0._Y23._MAX, XXMX)  // _MAX: Maximum Base Address
            CreateDWordField (_CRS, \_SB.PCI0._Y23._LEN, XXLN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y24._MIN, F4MN)  // _MIN: Minimum Base Address
            CreateDWordField (_CRS, \_SB.PCI0._Y24._MAX, F4MX)  // _MAX: Maximum Base Address
            CreateDWordField (_CRS, \_SB.PCI0._Y24._LEN, F4LN)  // _LEN: Length
            CreateWordField (_CRS, \_SB.PCI0._Y25._MAX, B0MX)  // _MAX: Maximum Base Address
            CreateWordField (_CRS, \_SB.PCI0._Y25._LEN, B0LN)  // _LEN: Length
            Method (_INI, 0, Serialized)  // _INI: Initialize
            {
                B0MX = 0x3F
                B0LN = (0x3F + 0x01)
                If (!\OSIF)
                {
                    \_SB._INI ()
                }

                Local0 = (TLUD << 0x14)
                \MEMX = Local0
                XXMN = Local0
                XXLN = ((XXMX - XXMN) + 0x01)
                If ((\TPMP == 0x00))
                {
                    F4LN = 0x00
                }

                If ((PAM1 & 0x03))
                {
                    C0LN = 0x00
                }

                If ((PAM1 & 0x30))
                {
                    C4LN = 0x00
                }

                If ((PAM2 & 0x03))
                {
                    C8LN = 0x00
                }

                If ((PAM2 & 0x30))
                {
                    CCLN = 0x00
                }

                If ((PAM3 & 0x03))
                {
                    D0LN = 0x00
                }

                If ((PAM3 & 0x30))
                {
                    D4LN = 0x00
                }

                If ((PAM4 & 0x03))
                {
                    D8LN = 0x00
                }

                If ((PAM4 & 0x30))
                {
                    DCLN = 0x00
                }

                If ((PAM5 & 0x03))
                {
                    E0LN = 0x00
                }

                If ((PAM5 & 0x30))
                {
                    E4LN = 0x00
                }

                If ((PAM6 & 0x03))
                {
                    E8LN = 0x00
                }

                If ((PAM6 & 0x30))
                {
                    ECLN = 0x00
                }
            }

            Name (SUPP, 0x00)
            Name (CTRL, 0x00)
            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                CreateDWordField (Arg3, 0x00, CDW1)
                CreateDWordField (Arg3, 0x04, CDW2)
                CreateDWordField (Arg3, 0x08, CDW3)
                If (\_SB.PCI0.XHC.CUID (Arg0))
                {
                    Return (\_SB.PCI0.XHC.POSC (Arg1, Arg2, Arg3))
                }

                If ((Arg0 == ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */))
                {
                    SUPP = CDW2
                    CTRL = CDW3
                    CTRL &= 0x0D
                    If (!(CDW1 & 0x01))
                    {
                        If ((CTRL & 0x01))
                        {
                            If (!\VIGD)
                            {
                                \_SB.PCI0.PEG.HPGP = 0x00
                                \_SB.PCI0.PEG.GMGP = 0x00
                            }

                            \_SB.PCI0.EXP3.HPCE = 0x00
                            \_SB.PCI0.EXP3.HPCS = 0x01
                            \_SB.PCI0.EXP3.PDC = 0x01
                            \NHPS = 0x01
                        }

                        If ((CTRL & 0x04))
                        {
                            If (!\VIGD)
                            {
                                \_SB.PCI0.PEG.PMGP = 0x00
                                \_SB.PCI0.PEG.GMGP = 0x00
                            }

                            If (\_SB.PCI0.EXP1.PMCE)
                            {
                                \_SB.PCI0.EXP1.PMCE = 0x00
                                \_SB.PCI0.EXP1.PMCS = 0x01
                            }

                            If (\_SB.PCI0.EXP3.PMCE)
                            {
                                \_SB.PCI0.EXP3.PMCE = 0x00
                                \_SB.PCI0.EXP3.PMCS = 0x01
                            }

                            If (\_SB.PCI0.EXP4.PMCE)
                            {
                                \_SB.PCI0.EXP4.PMCE = 0x00
                                \_SB.PCI0.EXP4.PMCS = 0x01
                            }

                            If (\_SB.PCI0.EXP5.PMCE)
                            {
                                \_SB.PCI0.EXP5.PMCE = 0x00
                                \_SB.PCI0.EXP5.PMCS = 0x01
                            }

                            \_SB.PCI0.LPC.EXPE = 0x00
                            \NPME = 0x01
                        }
                    }

                    If ((Arg1 != 0x01))
                    {
                        CDW1 |= 0x0A
                    }

                    If ((CDW3 != CTRL))
                    {
                        CDW1 |= 0x10
                    }

                    CDW3 = CTRL
                }
                Else
                {
                    CDW1 |= 0x06
                }

                Return (Arg3)
            }

            Mutex(MDGS, 0)
            Name (VDEE, 0x01)
            Name (VDDA, Buffer (0x02) {})
            CreateBitField (VDDA, 0x00, VUPC)
            CreateBitField (VDDA, 0x01, VQDL)
            CreateBitField (VDDA, 0x02, VQDC)
            CreateBitField (VDDA, 0x03, VQD0)
            CreateBitField (VDDA, 0x04, VQD1)
            CreateBitField (VDDA, 0x05, VQD2)
            CreateBitField (VDDA, 0x06, VSDL)
            CreateBitField (VDDA, 0x07, VSDC)
            CreateBitField (VDDA, 0x08, VSD0)
            CreateBitField (VDDA, 0x09, VSD1)
            CreateBitField (VDDA, 0x0A, VSD2)
            CreateBitField (VDDA, 0x0B, VSD3)
            CreateBitField (VDDA, 0x0C, VSD4)
            CreateBitField (VDDA, 0x0D, VSD5)
            CreateBitField (VDDA, 0x0E, MSWT)
            Device (IGPU)
            {
                Name (_ADR, 0x00020000)  // _ADR: Address
                Name (RID, 0x00)
                OperationRegion (VPCG, PCI_Config, 0x00, 0x0100)
                Field (VPCG, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xD4), 
                    VPWR,   8
                }

                Name (MIDL, 0x0400)
                Name (MIDC, 0x0100)
                Name (MID0, 0x0300)
                Name (MID1, 0x0301)
                Name (MID2, 0x0302)
                Name (MID3, 0x0303)
                Name (MID4, 0x0304)
                Name (MID5, 0x0305)
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    CLID = \_SB.LID._LID ()
                }

                Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                {
                    Noop
                }

                Method (_PS1, 0, NotSerialized)  // _PS1: Power State 1
                {
                    Noop
                }

                Method (_PS2, 0, NotSerialized)  // _PS2: Power State 2
                {
                    Noop
                }

                Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                {
                    Noop
                }

                Method (VSWT, 0, NotSerialized)
                {
                    GHDS (0x00)
                }

                Method (VLOC, 1, NotSerialized)
                {
                    If ((Arg0 == \_SB.LID._LID ()))
                    {
                        \VSLD (Arg0)
                        If ((VPWR == 0x00))
                        {
                            CLID = Arg0
                            GNOT (0x02, 0x00)
                        }
                    }
                }

                Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
                {
                    Arg0 &= 0x03
                    If ((Arg0 == 0x02))
                    {
                        Local0 = 0x14
                        While (Local0)
                        {
                            Local0--
                            Acquire (MDGS, 0xFFFF)
                            If ((0x00 == MSWT))
                            {
                                MSWT = 0x01
                                Local0 = 0x00
                                VDEE = Arg0
                            }

                            Release (MDGS)
                            Sleep (0xC8)
                        }
                    }
                    Else
                    {
                        Acquire (MDGS, 0xFFFF)
                        If ((VDEE == 0x02))
                        {
                            MSWT = 0x00
                        }

                        If ((Arg0 > 0x02))
                        {
                            VDEE = 0x01
                        }
                        Else
                        {
                            VDEE = Arg0
                        }

                        Release (MDGS)
                    }
                }

                Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
                {
                    NDID = 0x00
                    If ((DIDL != 0x00))
                    {
                        NDID++
                    }

                    If ((DDL2 != 0x00))
                    {
                        NDID++
                    }

                    If ((DDL3 != 0x00))
                    {
                        NDID++
                    }

                    If ((DDL4 != 0x00))
                    {
                        NDID++
                    }

                    If ((DDL5 != 0x00))
                    {
                        NDID++
                    }

                    If ((DDL6 != 0x00))
                    {
                        NDID++
                    }

                    If ((DDL7 != 0x00))
                    {
                        NDID++
                    }

                    If ((DDL8 != 0x00))
                    {
                        NDID++
                    }

                    If ((NDID == 0x01))
                    {
                        Name (TMP1, Package (0x01)
                        {
                            0xFFFFFFFF
                        })
                        TMP1 [0x00] = (0x80010000 | (0x0F0F & DIDL))
                        Return (TMP1)
                    }

                    If ((NDID == 0x02))
                    {
                        Name (TMP2, Package (0x02)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        TMP2 [0x00] = (0x80010000 | (0x0F0F & DIDL))
                        TMP2 [0x01] = (0x80010000 | (0x0F0F & DDL2))
                        Return (TMP2)
                    }

                    If ((NDID == 0x03))
                    {
                        Name (TMP3, Package (0x03)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        TMP3 [0x00] = (0x80010000 | (0x0F0F & DIDL))
                        TMP3 [0x01] = (0x80010000 | (0x0F0F & DDL2))
                        TMP3 [0x02] = (0x80010000 | (0x0F0F & DDL3))
                        Return (TMP3)
                    }

                    If ((NDID == 0x04))
                    {
                        Name (TMP4, Package (0x04)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        TMP4 [0x00] = (0x80010000 | (0x0F0F & DIDL))
                        TMP4 [0x01] = (0x80010000 | (0x0F0F & DDL2))
                        TMP4 [0x02] = (0x80010000 | (0x0F0F & DDL3))
                        TMP4 [0x03] = (0x80010000 | (0x0F0F & DDL4))
                        Return (TMP4)
                    }

                    If ((NDID == 0x05))
                    {
                        Name (TMP5, Package (0x05)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        TMP5 [0x00] = (0x80010000 | (0x0F0F & DIDL))
                        TMP5 [0x01] = (0x80010000 | (0x0F0F & DDL2))
                        TMP5 [0x02] = (0x80010000 | (0x0F0F & DDL3))
                        TMP5 [0x03] = (0x80010000 | (0x0F0F & DDL4))
                        TMP5 [0x04] = (0x80010000 | (0x0F0F & DDL5))
                        Return (TMP5)
                    }

                    If ((NDID == 0x06))
                    {
                        Name (TMP6, Package (0x06)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        TMP6 [0x00] = (0x80010000 | (0x0F0F & DIDL))
                        TMP6 [0x01] = (0x80010000 | (0x0F0F & DDL2))
                        TMP6 [0x02] = (0x80010000 | (0x0F0F & DDL3))
                        TMP6 [0x03] = (0x80010000 | (0x0F0F & DDL4))
                        TMP6 [0x04] = (0x80010000 | (0x0F0F & DDL5))
                        TMP6 [0x05] = (0x80010000 | (0x0F0F & DDL6))
                        Return (TMP6)
                    }

                    If ((NDID == 0x07))
                    {
                        Name (TMP7, Package (0x07)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        TMP7 [0x00] = (0x80010000 | (0x0F0F & DIDL))
                        TMP7 [0x01] = (0x80010000 | (0x0F0F & DDL2))
                        TMP7 [0x02] = (0x80010000 | (0x0F0F & DDL3))
                        TMP7 [0x03] = (0x80010000 | (0x0F0F & DDL4))
                        TMP7 [0x04] = (0x80010000 | (0x0F0F & DDL5))
                        TMP7 [0x05] = (0x80010000 | (0x0F0F & DDL6))
                        TMP7 [0x06] = (0x80010000 | (0x0F0F & DDL7))
                        Return (TMP7)
                    }

                    If ((NDID > 0x07))
                    {
                        Name (TMP8, Package (0x08)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        TMP8 [0x00] = (0x80010000 | (0x0F0F & DIDL))
                        TMP8 [0x01] = (0x80010000 | (0x0F0F & DDL2))
                        TMP8 [0x02] = (0x80010000 | (0x0F0F & DDL3))
                        TMP8 [0x03] = (0x80010000 | (0x0F0F & DDL4))
                        TMP8 [0x04] = (0x80010000 | (0x0F0F & DDL5))
                        TMP8 [0x05] = (0x80010000 | (0x0F0F & DDL6))
                        TMP8 [0x06] = (0x80010000 | (0x0F0F & DDL7))
                        TMP8 [0x07] = (0x80010000 | (0x0F0F & DDL8))
                        Return (TMP8)
                    }

                    Return (Package (0x01)
                    {
                        0x0400
                    })
                }

                Method (VDSW, 1, NotSerialized)
                {
                    If ((VPWR == 0x00))
                    {
                        GDCK (Arg0)
                    }
                }

                Method (VCAD, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If (((DIDL & 0x0F0F) == Arg0))
                    {
                        Local0 = 0x0D
                    }
                    ElseIf (((DDL2 & 0x0F0F) == Arg0))
                    {
                        Local0 = 0x0D
                    }
                    ElseIf (((DDL3 & 0x0F0F) == Arg0))
                    {
                        Local0 = 0x0D
                    }
                    ElseIf (((DDL4 & 0x0F0F) == Arg0))
                    {
                        Local0 = 0x0D
                    }
                    ElseIf (((DDL5 & 0x0F0F) == Arg0))
                    {
                        Local0 = 0x0D
                    }
                    ElseIf (((DDL6 & 0x0F0F) == Arg0))
                    {
                        Local0 = 0x0D
                    }
                    ElseIf (((DDL7 & 0x0F0F) == Arg0))
                    {
                        Local0 = 0x0D
                    }
                    ElseIf (((DDL8 & 0x0F0F) == Arg0))
                    {
                        Local0 = 0x0D
                    }

                    If (((CPDL & 0x0F0F) == Arg0))
                    {
                        Local0 |= 0x10
                    }
                    ElseIf (((CPL2 & 0x0F0F) == Arg0))
                    {
                        Local0 |= 0x10
                    }
                    ElseIf (((CPL3 & 0x0F0F) == Arg0))
                    {
                        Local0 |= 0x10
                    }
                    ElseIf (((CPL4 & 0x0F0F) == Arg0))
                    {
                        Local0 |= 0x10
                    }
                    ElseIf (((CPL5 & 0x0F0F) == Arg0))
                    {
                        Local0 |= 0x10
                    }
                    ElseIf (((CPL6 & 0x0F0F) == Arg0))
                    {
                        Local0 |= 0x10
                    }
                    ElseIf (((CPL7 & 0x0F0F) == Arg0))
                    {
                        Local0 |= 0x10
                    }
                    ElseIf (((CPL8 & 0x0F0F) == Arg0))
                    {
                        Local0 |= 0x10
                    }

                    If (((CADL & 0x0F0F) == Arg0))
                    {
                        Local0 |= 0x02
                    }
                    ElseIf (((CAL2 & 0x0F0F) == Arg0))
                    {
                        Local0 |= 0x02
                    }
                    ElseIf (((CAL3 & 0x0F0F) == Arg0))
                    {
                        Local0 |= 0x02
                    }
                    ElseIf (((CAL4 & 0x0F0F) == Arg0))
                    {
                        Local0 |= 0x02
                    }
                    ElseIf (((CAL5 & 0x0F0F) == Arg0))
                    {
                        Local0 |= 0x02
                    }
                    ElseIf (((CAL6 & 0x0F0F) == Arg0))
                    {
                        Local0 |= 0x02
                    }
                    ElseIf (((CAL7 & 0x0F0F) == Arg0))
                    {
                        Local0 |= 0x02
                    }
                    ElseIf (((CAL8 & 0x0F0F) == Arg0))
                    {
                        Local0 |= 0x02
                    }

                    Return (Local0)
                }

                Method (NDDS, 1, NotSerialized)
                {
                    If (((NADL & 0x0F0F) == Arg0))
                    {
                        Return (0x01)
                    }
                    ElseIf (((NDL2 & 0x0F0F) == Arg0))
                    {
                        Return (0x01)
                    }
                    ElseIf (((NDL3 & 0x0F0F) == Arg0))
                    {
                        Return (0x01)
                    }
                    ElseIf (((NDL4 & 0x0F0F) == Arg0))
                    {
                        Return (0x01)
                    }
                    ElseIf (((NDL5 & 0x0F0F) == Arg0))
                    {
                        Return (0x01)
                    }
                    ElseIf (((NDL6 & 0x0F0F) == Arg0))
                    {
                        Return (0x01)
                    }
                    ElseIf (((NDL7 & 0x0F0F) == Arg0))
                    {
                        Return (0x01)
                    }
                    ElseIf (((NDL8 & 0x0F0F) == Arg0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Device (LCD0)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return (0x0400)
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (VCAD (MIDL))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (MIDL))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        VSDL = (Arg0 & 0x01)
                    }

                    Method (_DDC, 1, NotSerialized)  // _DDC: Display Data Current
                    {
                        If ((Arg0 == 0x01))
                        {
                            Return (\VEDI)
                        }
                        ElseIf ((Arg0 == 0x02))
                        {
                            Return (\VEDI)
                        }

                        Return (0x00)
                    }
                }

                Device (CRT0)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return (0x0100)
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (VCAD (MIDC))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (MIDC))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        VSDC = (Arg0 & 0x01)
                    }
                }

                Device (DVI0)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return (0x0300)
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (VCAD (MID0))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (MID0))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        VSD0 = (Arg0 & 0x01)
                    }
                }

                Device (DVI1)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return (0x0301)
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (VCAD (MID1))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (MID1))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        VSD1 = (Arg0 & 0x01)
                    }
                }

                Device (DVI2)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return (0x0302)
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (VCAD (MID2))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (MID2))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        VSD2 = (Arg0 & 0x01)
                    }
                }

                Device (DVI3)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return (0x0303)
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (VCAD (MID3))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (MID3))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        VSD3 = (Arg0 & 0x01)
                    }
                }

                Device (DVI4)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return (0x0304)
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (VCAD (MID4))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (MID4))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        VSD4 = (Arg0 & 0x01)
                    }
                }

                Device (DVI5)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return (0x0305)
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (VCAD (MID5))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (MID5))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        VSD5 = (Arg0 & 0x01)
                    }
                }
                
                OperationRegion (RMPC, PCI_Config, 0x10, 4)
                Field (RMPC, AnyAcc, NoLock, Preserve)
                {
                    BAR1,32,
                }
                Device (PNLF)
                {
                    // normal PNLF declares (note some of this probably not necessary)
                    Name (_ADR, Zero)
                    Name (_HID, EisaId ("APP0002"))
                    Name (_CID, "backlight")
                    Name (_UID, 15)
                    Name (_STA, 0x0B)
                    //define hardware register access for brightness
                    // lower nibble of BAR1 is status bits and not part of the address
                    OperationRegion (BRIT, SystemMemory, And(^BAR1, Not(0xF)), 0xe1184)
                    Field (BRIT, AnyAcc, Lock, Preserve)
                    {
                        Offset(0x48250),
                        LEV2, 32,
                        LEVL, 32,
                        Offset(0x70040),
                        P0BL, 32,
                        Offset(0xc8250),
                        LEVW, 32,
                        LEVX, 32,
                        Offset(0xe1180),
                        PCHL, 32,
                    }
                    // LMAX: use 0xad9/0x56c/0x5db to force OS X value
                    //       or use any arbitrary value
                    //       or use 0 to capture BIOS setting
                    Name (LMAX, 0xad9)
                    // KMAX: defines the unscaled range in the _BCL table below
                    Name (KMAX, 0xad9)
                    // _INI deals with differences between native setting and desired
                    Method (_INI, 0, NotSerialized)
                    {
                        // This 0xC value comes from looking what OS X initializes this
                        // register to after display sleep (using ACPIDebug/ACPIPoller)
                        Store(0xC0000000, LEVW)
                        // determine LMAX to use
                        If (LNot(LMAX)) { Store(ShiftRight(LEVX,16), LMAX) }
                        If (LNot(LMAX)) { Store(KMAX, LMAX) }
                        If (LNotEqual(LMAX, KMAX))
                        {
                            // Scale all the values in _BCL to the PWM max in use
                            Store(0, Local0)
                            While (LLess(Local0, SizeOf(_BCL)))
                            {
                                Store(DerefOf(Index(_BCL,Local0)), Local1)
                                Divide(Multiply(Local1,LMAX), KMAX,, Local1)
                                Store(Local1, Index(_BCL,Local0))
                                Increment(Local0)
                            }
                            // Also scale XRGL and XRGH values
                            Divide(Multiply(XRGL,LMAX), KMAX,, XRGL)
                            Divide(Multiply(XRGH,LMAX), KMAX,, XRGH)
                        }
                        // adjust values to desired LMAX
                        Store(ShiftRight(LEVX,16), Local1)
                        If (LNotEqual(Local1, LMAX))
                        {
                            Store(And(LEVX,0xFFFF), Local0)
                            If (LOr(LNot(Local0),LNot(Local1))) { Store(LMAX, Local0) Store(LMAX, Local1) }
                            Divide(Multiply(Local0,LMAX), Local1,, Local0)
                            //REVIEW: wait for vblank before setting new PWM config
                            //Store(P0BL, Local7)
                            //While (LEqual (P0BL, Local7)) {}
                            Store(Or(Local0,ShiftLeft(LMAX,16)), LEVX)
                        }
                    }
                    // _BCM/_BQC: set/get for brightness level
                    Method (_BCM, 1, NotSerialized)
                    {
                        // store new backlight level
                        Store(Match(_BCL, MGE, Arg0, MTR, 0, 2), Local0)
                        If (LEqual(Local0, Ones)) { Subtract(SizeOf(_BCL), 1, Local0) }
                        Store(Or(DerefOf(Index(_BCL,Local0)),ShiftLeft(LMAX,16)), LEVX)
                    }
                    Method (_BQC, 0, NotSerialized)
                    {
                        Store(Match(_BCL, MGE, And(LEVX, 0xFFFF), MTR, 0, 2), Local0)
                        If (LEqual(Local0, Ones)) { Subtract(SizeOf(_BCL), 1, Local0) }
                        Return(DerefOf(Index(_BCL, Local0)))
                    }
                    Method (_DOS, 1, NotSerialized)
                    {
                        // Note: Some systems have this defined in DSDT, so uncomment
                        // the next line if that is the case.
                        //External(^^_DOS, MethodObj)
                        ^^_DOS(Arg0)
                    }
                    // extended _BCM/_BQC for setting "in between" levels
                    Method (XBCM, 1, NotSerialized)
                    {
                        // store new backlight level
                        If (LGreater(Arg0, XRGH)) { Store(XRGH, Arg0) }
                        If (LAnd(Arg0, LLess(Arg0, XRGL))) { Store(XRGL, Arg0) }
                        Store(Or(Arg0,ShiftLeft(LMAX,16)), LEVX)
                    }
                    Method (XBQC, 0, NotSerialized)
                    {
                        Store(And(LEVX,0xFFFF), Local0)
                        If (LGreater(Local0, XRGH)) { Store(XRGH, Local0) }
                        If (LAnd(Local0, LLess(Local0, XRGL))) { Store(XRGL, Local0) }
                        Return(Local0)
                    }
                    // Set XOPT bit 0 to disable smooth transitions
                    // Set XOPT bit 1 to wait for native BacklightHandler
                    // Set XOPT bit 2 to force use of native BacklightHandler
                    Name (XOPT, 0x02)
                    // XRGL/XRGH: defines the valid range
                    Name (XRGL, 25)
                    Name (XRGH, 2777)
                    // _BCL: returns list of valid brightness levels
                    // first two entries describe ac/battery power levels
                    Name (_BCL, Package()
                    {
                        2777,
                        748,
                        0,
                        35, 39, 44, 50,
                        58, 67, 77, 88,
                        101, 115, 130, 147,
                        165, 184, 204, 226,
                        249, 273, 299, 326,
                        354, 383, 414, 446,
                        479, 514, 549, 587,
                        625, 665, 706, 748,
                        791, 836, 882, 930,
                        978, 1028, 1079, 1132,
                        1186, 1241, 1297, 1355,
                        1414, 1474, 1535, 1598,
                        1662, 1728, 1794, 1862,
                        1931, 2002, 2074, 2147,
                        2221, 2296, 2373, 2452,
                        2531, 2612, 2694, 2777,
                    })
                }
                Method (_DSM, 4, NotSerialized)
                {
                    If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
                    Return (Package()
                    {
                        "device-id", Buffer() { 0x12, 0x04, 0x00, 0x00 },
                        "AAPL,ig-platform-id", Buffer() { 0x06, 0x00, 0x26, 0x0a },
                        "hda-gfx", Buffer() { "onboard-1" },
                        "model", Buffer() { "Intel HD 4600" },
                    })
                }
            }

            Device (LPC)
            {
                Name (_ADR, 0x001F0000)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, 0x00)
                Device (SIO)
                {
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                    Name (_UID, 0x00)  // _UID: Unique ID
                    Name (SCRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0010,             // Range Minimum
                            0x0010,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0090,             // Range Minimum
                            0x0090,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0024,             // Range Minimum
                            0x0024,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0028,             // Range Minimum
                            0x0028,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x002C,             // Range Minimum
                            0x002C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0030,             // Range Minimum
                            0x0030,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0034,             // Range Minimum
                            0x0034,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0038,             // Range Minimum
                            0x0038,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x003C,             // Range Minimum
                            0x003C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A4,             // Range Minimum
                            0x00A4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A8,             // Range Minimum
                            0x00A8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00AC,             // Range Minimum
                            0x00AC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B0,             // Range Minimum
                            0x00B0,             // Range Maximum
                            0x01,               // Alignment
                            0x06,               // Length
                            )
                        IO (Decode16,
                            0x00B8,             // Range Minimum
                            0x00B8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00BC,             // Range Minimum
                            0x00BC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0050,             // Range Minimum
                            0x0050,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IO (Decode16,
                            0x0072,             // Range Minimum
                            0x0072,             // Range Maximum
                            0x01,               // Alignment
                            0x06,               // Length
                            )
                        IO (Decode16,
                            0x1800,             // Range Minimum
                            0x1800,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x0800,             // Range Minimum
                            0x0800,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x15E0,             // Range Minimum
                            0x15E0,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0062,             // Range Minimum
                            0x0062,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x1640,             // Range Minimum
                            0x1640,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xF8000000,         // Address Base
                            0x04000000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0x00000000,         // Address Base
                            0x00001000,         // Address Length
                            _Y26)
                        Memory32Fixed (ReadWrite,
                            0xFED1C000,         // Address Base
                            0x00004000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFED10000,         // Address Base
                            0x00004000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFED18000,         // Address Base
                            0x00001000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFED19000,         // Address Base
                            0x00001000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFED45000,         // Address Base
                            0x00007000,         // Address Length
                            )
                    })
                    CreateDWordField (SCRS, \_SB.PCI0.LPC.SIO._Y26._BAS, TRMB)  // _BAS: Base Address
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        TRMB = \TBAB
                        If ((\_SB.PCI0.LPC.TPM._STA () == 0x0F))
                        {
                            Return (SCRS)
                        }
                        Else
                        {
                            Local0 = (SizeOf (SCRS) - 0x02)
                            Name (BUF0, Buffer (Local0) {})
                            Local0 += SizeOf (\_SB.PCI0.LPC.TPM.BUF1)
                            Name (BUF1, Buffer (Local0) {})
                            BUF0 = SCRS
                            Concatenate (BUF0, \_SB.PCI0.LPC.TPM.BUF1, BUF1)
                            Return (BUF1)
                        }
                    }
                }

                OperationRegion (LPCS, PCI_Config, 0x00, 0x0100)
                Field (LPCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x60), 
                    PIRA,   8, 
                    PIRB,   8, 
                    PIRC,   8, 
                    PIRD,   8, 
                    SERQ,   8, 
                    Offset (0x68), 
                    PIRE,   8, 
                    PIRF,   8, 
                    PIRG,   8, 
                    PIRH,   8, 
                    Offset (0x80), 
                    XU1A,   3, 
                        ,   1, 
                    XU2A,   3, 
                    Offset (0x81), 
                    XPA,    2, 
                        ,   2, 
                    XFA,    1, 
                    Offset (0x82), 
                    XU1E,   1, 
                    XU2E,   1, 
                    XPE,    1, 
                    XFE,    1, 
                    Offset (0x84), 
                    XG1E,   1, 
                        ,   1, 
                    XG1A,   14, 
                    Offset (0x88), 
                    XG2E,   1, 
                        ,   1, 
                    XG2A,   14, 
                    Offset (0xA0), 
                        ,   2, 
                    CLKR,   1, 
                        ,   7, 
                    EXPE,   1, 
                    Offset (0xA2), 
                    Offset (0xAC), 
                    Offset (0xAD), 
                    Offset (0xAE), 
                    XUSB,   1, 
                    Offset (0xB8), 
                    GR00,   2, 
                        ,   10, 
                    GR06,   2
                }

                OperationRegion (LPIO, SystemIO, 0x0800, 0x80)
                Field (LPIO, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x0C), 
                    FBTR,   1, 
                        ,   6, 
                    Offset (0x0D), 
                        ,   3, 
                    NFCI,   1, 
                    Offset (0x0E), 
                        ,   1, 
                    GPGD,   1, 
                        ,   4, 
                    GLIS,   1, 
                    Offset (0x0F), 
                    Offset (0x10), 
                    Offset (0x2C), 
                        ,   6, 
                    XHPD,   1, 
                    Offset (0x38), 
                        ,   2, 
                    NFCD,   1, 
                        ,   3, 
                    PID2,   1, 
                    PID3,   1, 
                    Offset (0x3A), 
                    PID0,   1, 
                    PID1,   1, 
                        ,   4, 
                    NFCP,   1, 
                    Offset (0x48), 
                    DOI0,   1, 
                    DOI1,   1, 
                    DOI2,   1, 
                    DOI3,   1
                }

                OperationRegion (PMIO, SystemIO, 0x1800, 0x80)
                Field (PMIO, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x2A), 
                    XHPE,   1, 
                    Offset (0x42), 
                        ,   1, 
                    SWGE,   1, 
                    Offset (0x64), 
                        ,   9, 
                    SCIS,   1, 
                    Offset (0x66)
                }

                Device (PIC)
                {
                    Name (_HID, EisaId ("PNP0000"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        
                    })
                }

                Device (TIMR)
                {
                    Name (_HID, EisaId ("PNP0100"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        
                    })
                }

                Device (HPET)
                {
                    Name (_HID, EisaId ("PNP0103"))  // _HID: Hardware ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((\WNTF && !\WXPF))
                        {
                            Return (0x00)
                        }
                        Else
                        {
                            Return (0x0F)
                        }

                        Return (0x00)
                    }

                    Name (BUF0, ResourceTemplate()
{
    IRQNoFlags() { 0, 8, 11, 15 }

                        Memory32Fixed (ReadOnly,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            _Y27)
                    })

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        CreateDWordField (BUF0, \_SB.PCI0.LPC.HPET._Y27._BAS, HPT0)  // _BAS: Base Address
                        HPT0 = \HPET
                        Return (BUF0)
                    }
                }

                Device (DMAC)
                {
                    Name (_HID, EisaId ("PNP0200"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        DMA (Compatibility, BusMaster, Transfer8_16, )
                            {4}
                    })
                }

                Device (SPKR)
                {
                    Name (_HID, EisaId ("PNP0800"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                    })
                }

                Device (FPU)
                {
                    Name (_HID, EisaId ("PNP0C04"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {13}
                    })
                }

                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        
                    })
                }

                Device (KBD)
                {
                    Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                    {
                        If (\WIN8)
                        {
                            Return (0x7100AE30)
                        }

                        Return (0x0303D041)
                    }

                    Name (_CID, EisaId ("PNP0303"))  // _CID: Compatible ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {1}
                    })
                }

                Device (MOU)
                {
                    Name (_HID, EisaId ("LEN2006"))  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0F13"))  // _CID: Compatible ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IRQNoFlags ()
                            {12}
                    })
                    Method (MHID, 0, NotSerialized)
                    {
                        If (\_SB.PCI0.LPC.PADD)
                        {
                            _HID = 0x0620AE30
                        }
                        Else
                        {
                            _HID = 0x0620AE30
                        }
                    }
                }

                OperationRegion (IMGA, SystemIO, 0x15E0, 0x10)
                Field (IMGA, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x01), 
                    Offset (0x02), 
                    Offset (0x03), 
                    WAKR,   16, 
                    Offset (0x0C), 
                    GAIX,   8, 
                    Offset (0x0E), 
                    GADT,   8, 
                    Offset (0x10)
                }

                IndexField (GAIX, GADT, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x50), 
                        ,   3, 
                    IVPW,   1, 
                    DVPW,   1, 
                    BLPL,   1, 
                    Offset (0x51), 
                    TP4R,   1, 
                    PADR,   1, 
                    BPAD,   1, 
                        ,   1, 
                        ,   1, 
                    PADD,   1, 
                    Offset (0x60), 
                    EPWG,   1, 
                        ,   1, 
                    CSON,   1, 
                    DSCI,   1, 
                    DSCS,   1, 
                    DLAN,   1, 
                    Offset (0xC2), 
                    GAID,   8
                }

                Scope (\_SB)
                {
                    Name (TCGP, Buffer (0x08)
                    {
                         0x1F, 0xE0, 0x1F, 0x01, 0x02, 0x04, 0x08, 0xF0 
                    })
                    CreateByteField (TCGP, 0x00, PPRQ)
                    CreateByteField (TCGP, 0x01, PPL1)
                    CreateByteField (TCGP, 0x02, PPRP)
                    CreateByteField (TCGP, 0x03, TPRS)
                    CreateByteField (TCGP, 0x04, PPOR)
                    CreateByteField (TCGP, 0x05, TPMV)
                    CreateByteField (TCGP, 0x06, MOR)
                    CreateByteField (TCGP, 0x07, TVEN)
                    OperationRegion (TCGC, SystemIO, 0x72, 0x02)
                    Field (TCGC, ByteAcc, Lock, Preserve)
                    {
                        TIDX,   8, 
                        TPDA,   8
                    }

                    IndexField (TIDX, TPDA, ByteAcc, Lock, Preserve)
                    {
                        Offset (0x40), 
                        TPP1,   8, 
                        PPLO,   8, 
                        TPP3,   8
                    }

                    OperationRegion (SMIP, SystemIO, 0xB2, 0x02)
                    Field (SMIP, WordAcc, NoLock, Preserve)
                    {
                        SMIT,   8, 
                        SMID,   8
                    }
                }

                Device (TPM)
                {
                    Name (TMPV, 0x00)
                    Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                    {
                        If ((TVID == 0x15D1))
                        {
                            Return (0x0201D824)
                        }

                        If (((TVID == 0x1050) || (TVID == 0x100B)))
                        {
                            Return (0x0010A35C)
                        }

                        If ((TVID == 0x19FA))
                        {
                            Return (0x0435CF4D)
                        }

                        If ((TDID == 0x1002))
                        {
                            Return (0x02016D08)
                        }

                        If ((TDID == 0x1001))
                        {
                            Return (0x01016D08)
                        }

                        If ((TVID == 0x1114))
                        {
                            Return (0x00128D06)
                        }

                        If ((TVID == 0x104A))
                        {
                            Return (0x0012AF4D)
                        }

                        Return (0x310CD041)
                    }

                    Name (_CID, EisaId ("PNP0C31"))  // _CID: Compatible ID
                    Name (_UID, 0x01)  // _UID: Unique ID
                    OperationRegion (TMMB, SystemMemory, 0xFED40000, 0x1000)
                    Field (TMMB, ByteAcc, Lock, Preserve)
                    {
                        ACCS,   8, 
                        Offset (0x18), 
                        TSTA,   8, 
                        TBCA,   8, 
                        Offset (0xF00), 
                        TVID,   16, 
                        TDID,   16
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((ACCS == 0xFF))
                        {
                            Return (0x00)
                        }
                        ElseIf ((TPME == 0x00))
                        {
                            Return (0x00)
                        }

                        Return (0x0F)
                    }

                    Name (BUF1, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0xFED40000,         // Address Base
                            0x00005000,         // Address Length
                            )
                    })
                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Return (BUF1)
                    }

                    Method (UCMP, 2, NotSerialized)
                    {
                        If ((0x10 != SizeOf (Arg0)))
                        {
                            Return (0x00)
                        }

                        If ((0x10 != SizeOf (Arg1)))
                        {
                            Return (0x00)
                        }

                        Local0 = 0x00
                        While ((Local0 < 0x10))
                        {
                            If ((DerefOf (Arg0 [Local0]) != DerefOf (Arg1 [Local0])))
                            {
                                Return (0x00)
                            }

                            Local0++
                        }

                        Return (0x01)
                    }

                    Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                    {
                        Name (TTMP, Buffer (0x01)
                        {
                             0x00                                           
                        })
                        CreateByteField (TTMP, 0x00, TMPV)
                        If ((UCMP (Arg0, ToUUID ("3dddfaa6-361b-4eb4-a424-8d10089d1653") /* Physical Presence Interface */) == 0x01))
                        {
                            If ((Arg2 == 0x00))
                            {
                                Return (Buffer (0x02)
                                {
                                     0xFF, 0x01                                     
                                })
                            }

                            If ((Arg2 == 0x01))
                            {
                                Return (Buffer (0x04)
                                {
                                    "1.2"
                                })
                            }

                            If ((Arg2 == 0x02))
                            {
                                TMPV = TPP3
                                If ((TMPV & TPRS))
                                {
                                    If ((DerefOf (Arg3 [0x00]) <= 0x0B))
                                    {
                                        TPP1 = DerefOf (Arg3 [0x00])
                                        Return (0x00)
                                    }

                                    If (((DerefOf (Arg3 [0x00]) >= 0x0E) && (DerefOf (Arg3 [0x00]) <= 0x12)))
                                    {
                                        TPP1 = DerefOf (Arg3 [0x00])
                                        Return (0x00)
                                    }

                                    If (((DerefOf (Arg3 [0x00]) == 0x15) || (DerefOf (Arg3 [0x00]) == 0x16)))
                                    {
                                        TPP1 = DerefOf (Arg3 [0x00])
                                        Return (0x00)
                                    }

                                    Return (0x01)
                                }

                                Return (0x02)
                            }

                            If ((Arg2 == 0x03))
                            {
                                Name (TMP1, Package (0x02)
                                {
                                    0x00, 
                                    0xFFFFFFFF
                                })
                                TMPV = TPP1
                                TMP1 [0x01] = TMPV &= PPRQ
                                Return (TMP1)
                            }

                            If ((Arg2 == 0x04))
                            {
                                Return (0x02)
                            }

                            If ((Arg2 == 0x05))
                            {
                                Name (TMP2, Package (0x03)
                                {
                                    0x00, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF
                                })
                                TMP2 [0x01] = PPLO
                                TMP2 [0x02] = 0x00
                                Return (TMP2)
                            }

                            If ((Arg2 == 0x06))
                            {
                                Return (0x03)
                            }

                            If ((Arg2 == 0x07))
                            {
                                TMPV = TPP3
                                If ((TMPV & TPRS))
                                {
                                    If ((DerefOf (Arg3 [0x00]) <= 0x0B))
                                    {
                                        TPP1 = DerefOf (Arg3 [0x00])
                                        Return (0x00)
                                    }

                                    If (((DerefOf (Arg3 [0x00]) >= 0x0E) && (DerefOf (Arg3 [0x00]) <= 0x12)))
                                    {
                                        TPP1 = DerefOf (Arg3 [0x00])
                                        Return (0x00)
                                    }

                                    If (((DerefOf (Arg3 [0x00]) == 0x15) || (DerefOf (Arg3 [0x00]) == 0x16)))
                                    {
                                        TPP1 = DerefOf (Arg3 [0x00])
                                        Return (0x00)
                                    }

                                    Return (0x01)
                                }

                                Return (0x02)
                            }

                            If ((Arg2 == 0x08))
                            {
                                Name (PPIP, 0x00)
                                Name (PPIC, 0x00)
                                If ((\TPPP == 0x00))
                                {
                                    PPIP = 0x01
                                }

                                If ((\TPPC == 0x00))
                                {
                                    PPIC = 0x01
                                }

                                If ((DerefOf (Arg3 [0x00]) == 0x05))
                                {
                                    If ((PPIC > 0x00))
                                    {
                                        Return (0x04)
                                    }

                                    Return (0x03)
                                }

                                If (((DerefOf (Arg3 [0x00]) >= 0x01) && (DerefOf (Arg3 [0x00]) <= 0x04)))
                                {
                                    If ((PPIP > 0x00))
                                    {
                                        Return (0x04)
                                    }

                                    Return (0x03)
                                }

                                If (((DerefOf (Arg3 [0x00]) >= 0x06) && (DerefOf (Arg3 [0x00]) <= 0x0B)))
                                {
                                    If ((PPIP > 0x00))
                                    {
                                        Return (0x04)
                                    }

                                    Return (0x03)
                                }

                                If (((DerefOf (Arg3 [0x00]) == 0x0E) || ((DerefOf (Arg3 [0x00]) >= 0x15) && (DerefOf (Arg3 [0x00]) <= 0x16))))
                                {
                                    If (((PPIP > 0x00) && (PPIC > 0x00)))
                                    {
                                        Return (0x04)
                                    }

                                    Return (0x03)
                                }

                                If (((DerefOf (Arg3 [0x00]) == 0x10) || (DerefOf (Arg3 [0x00]) == 0x12)))
                                {
                                    Return (0x03)
                                }

                                If (((DerefOf (Arg3 [0x00]) == 0x00) || ((DerefOf (Arg3 [0x00]) == 0x0F) || (DerefOf (Arg3 [0x00]) == 0x11))))
                                {
                                    Return (0x04)
                                }

                                Return (0x00)
                            }

                            Return (0x01)
                        }

                        If ((UCMP (Arg0, ToUUID ("376054ed-cc13-4675-901c-4756d7f2d45d")) == 0x01))
                        {
                            If ((Arg2 == 0x00))
                            {
                                Return (Buffer (0x01)
                                {
                                     0x03                                           
                                })
                            }

                            If ((Arg2 == 0x01))
                            {
                                TMPV = DerefOf (Arg3 [0x00])
                                TMPV &= 0x01
                                If ((TMPV == 0x00))
                                {
                                    \_SB.MOR = 0x00
                                    Return (0x00)
                                }

                                If ((TMPV == 0x01))
                                {
                                    \_SB.MOR = 0x01
                                    Return (0x00)
                                }
                            }

                            Return (0x01)
                        }

                        Return (Buffer (0x01)
                        {
                             0x00                                           
                        })
                    }

                    Method (CMOR, 0, NotSerialized)
                    {
                        \_SB.MOR = 0x00
                        SMID = 0x80
                        SMIT = 0xC1
                    }
                }

                Device (EC)
                {
                    Name (_HID, EisaId ("PNP0C09"))  // _HID: Hardware ID
                    Name (_UID, 0x00)  // _UID: Unique ID
                    Name (_GPE, 0x17)  // _GPE: General Purpose Events
                    Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                    {
                        If ((Arg0 == 0x03))
                        {
                            \H8DR = Arg1
                        }
                    }

                    OperationRegion (ECOR, EmbeddedControl, 0x00, 0x0100)
                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        HDBM,   1, 
                            ,   1, 
                        HKLK,   1, 
                        HFNE,   1, 
                            ,   1, 
                            ,   1, 
                        HLDM,   1, 
                        Offset (0x01), 
                        BBLS,   1, 
                        BTCM,   1, 
                            ,   1, 
                            ,   1, 
                            ,   1, 
                        HBPR,   1, 
                        BTPC,   1, 
                        Offset (0x02), 
                        HDUE,   1, 
                            ,   4, 
                        SNLK,   1, 
                        Offset (0x03), 
                            ,   5, 
                        HAUM,   2, 
                        Offset (0x05), 
                        HSPA,   1, 
                        Offset (0x06), 
                        HSUN,   8, 
                        HSRP,   8, 
                        Offset (0x0C), 
                        HLCL,   8, 
                            ,   4, 
                        CALM,   1, 
                        Offset (0x0E), 
                        HFNS,   2, 
                        Offset (0x0F), 
                            ,   6, 
                        NULS,   1, 
                        Offset (0x10), 
                        HAM0,   8, 
                        HAM1,   8, 
                        HAM2,   8, 
                        HAM3,   8, 
                        HAM4,   8, 
                        HAM5,   8, 
                        HAM6,   8, 
                        HAM7,   8, 
                        HAM8,   8, 
                        HAM9,   8, 
                        HAMA,   8, 
                        HAMB,   8, 
                        HAMC,   8, 
                        HAMD,   8, 
                        HAME,   8, 
                        HAMF,   8, 
                        Offset (0x23), 
                        HANT,   8, 
                        Offset (0x26), 
                            ,   2, 
                        HANA,   2, 
                        Offset (0x27), 
                        Offset (0x28), 
                            ,   1, 
                        SKEM,   1, 
                        Offset (0x29), 
                        Offset (0x2A), 
                        HATR,   8, 
                        HT0H,   8, 
                        HT0L,   8, 
                        HT1H,   8, 
                        HT1L,   8, 
                        HFSP,   8, 
                            ,   6, 
                        HMUT,   1, 
                        Offset (0x31), 
                            ,   2, 
                        HUWB,   1, 
                        Offset (0x32), 
                        HWPM,   1, 
                        HWLB,   1, 
                        HWLO,   1, 
                        HWDK,   1, 
                        HWFN,   1, 
                        HWBT,   1, 
                        HWRI,   1, 
                        HWBU,   1, 
                        HWLU,   1, 
                        Offset (0x34), 
                            ,   3, 
                        PIBS,   1, 
                            ,   3, 
                        HPLO,   1, 
                        Offset (0x36), 
                        Offset (0x38), 
                        HB0S,   7, 
                        HB0A,   1, 
                        HB1S,   7, 
                        HB1A,   1, 
                        HCMU,   1, 
                            ,   2, 
                        OVRQ,   1, 
                        DCBD,   1, 
                        DCWL,   1, 
                        DCWW,   1, 
                        HB1I,   1, 
                            ,   1, 
                        KBLT,   1, 
                        BTPW,   1, 
                        FNKC,   1, 
                        HUBS,   1, 
                        BDPW,   1, 
                        BDDT,   1, 
                        HUBB,   1, 
                        Offset (0x46), 
                            ,   1, 
                        BTWK,   1, 
                        HPLD,   1, 
                            ,   1, 
                        HPAC,   1, 
                        BTST,   1, 
                        Offset (0x47), 
                        HPBU,   1, 
                            ,   1, 
                        HBID,   1, 
                            ,   3, 
                        HBCS,   1, 
                        HPNF,   1, 
                            ,   1, 
                        GSTS,   1, 
                            ,   2, 
                        HLBU,   1, 
                        DOCD,   1, 
                        HCBL,   1, 
                        Offset (0x49), 
                        SLUL,   1, 
                        Offset (0x4C), 
                        HTMH,   8, 
                        HTML,   8, 
                        HWAK,   16, 
                        HMPR,   8, 
                            ,   7, 
                        HMDN,   1, 
                        Offset (0x78), 
                        TMP0,   8, 
                        Offset (0x80), 
                        Offset (0x81), 
                        HIID,   8, 
                        Offset (0x83), 
                        HFNI,   8, 
                        HSPD,   16, 
                        Offset (0x88), 
                        TSL0,   7, 
                        TSR0,   1, 
                        TSL1,   7, 
                        TSR1,   1, 
                        TSL2,   7, 
                        TSR2,   1, 
                        TSL3,   7, 
                        TSR3,   1, 
                        Offset (0x8D), 
                        HDAA,   3, 
                        HDAB,   3, 
                        HDAC,   2, 
                        Offset (0xB0), 
                        HDEN,   32, 
                        HDEP,   32, 
                        HDEM,   8, 
                        HDES,   8, 
                        Offset (0xBB), 
                        PLSL,   8, 
                        PLMS,   8, 
                        PLLS,   8, 
                        PLTU,   8, 
                        Offset (0xC8), 
                        ATMX,   8, 
                        HWAT,   8, 
                        Offset (0xCC), 
                        PWMH,   8, 
                        PWML,   8, 
                        Offset (0xED), 
                            ,   4, 
                        HDDD,   1
                    }

                    Method (_INI, 0, NotSerialized)  // _INI: Initialize
                    {
                        If (\H8DR)
                        {
                            HSPA = 0x00
                        }
                        Else
                        {
                            \MBEC (0x05, 0xFE, 0x00)
                        }

                        \_SB.PCI0.LPC.EC.HKEY.WGIN ()
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0062,             // Range Minimum
                            0x0062,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0066,             // Range Minimum
                            0x0066,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                    })
                    Method (LED, 2, NotSerialized)
                    {
                        Local0 = (Arg0 | Arg1)
                        If (\H8DR)
                        {
                            HLCL = Local0
                        }
                        Else
                        {
                            \WBEC (0x0C, Local0)
                        }
                    }

                    Name (BAON, 0x00)
                    Name (WBON, 0x00)
                    Method (BEEP, 1, NotSerialized)
                    {
                        If ((Arg0 == 0x05))
                        {
                            WBON = 0x00
                        }

                        Local2 = WBON
                        If (BAON)
                        {
                            If ((Arg0 == 0x00))
                            {
                                BAON = 0x00
                                If (WBON)
                                {
                                    Local0 = 0x03
                                    Local1 = 0x08
                                }
                                Else
                                {
                                    Local0 = 0x00
                                    Local1 = 0x00
                                }
                            }
                            Else
                            {
                                Local0 = 0xFF
                                Local1 = 0xFF
                                If ((Arg0 == 0x11))
                                {
                                    WBON = 0x00
                                }

                                If ((Arg0 == 0x10))
                                {
                                    WBON = 0x01
                                }
                            }
                        }
                        Else
                        {
                            Local0 = Arg0
                            Local1 = 0xFF
                            If ((Arg0 == 0x0F))
                            {
                                Local0 = Arg0
                                Local1 = 0x08
                                BAON = 0x01
                            }

                            If ((Arg0 == 0x11))
                            {
                                Local0 = 0x00
                                Local1 = 0x00
                                WBON = 0x00
                            }

                            If ((Arg0 == 0x10))
                            {
                                Local0 = 0x03
                                Local1 = 0x08
                                WBON = 0x01
                            }
                        }

                        If ((Arg0 == 0x03))
                        {
                            WBON = 0x00
                            If (Local2)
                            {
                                Local0 = 0x07
                                If (((\SPS == 0x03) || (\SPS == 0x04)))
                                {
                                    Local2 = 0x00
                                    Local0 = 0xFF
                                    Local1 = 0xFF
                                }
                            }
                        }

                        If ((Arg0 == 0x07))
                        {
                            If (Local2)
                            {
                                Local2 = 0x00
                                Local0 = 0xFF
                                Local1 = 0xFF
                            }
                        }

                        If (\H8DR)
                        {
                            If ((Local2 && !WBON))
                            {
                                HSRP = 0x00
                                HSUN = 0x00
                                Sleep (0x64)
                            }

                            If ((Local1 != 0xFF))
                            {
                                HSRP = Local1
                            }

                            If ((Local0 != 0xFF))
                            {
                                HSUN = Local0
                            }
                        }
                        Else
                        {
                            If ((Local2 && !WBON))
                            {
                                \WBEC (0x07, 0x00)
                                \WBEC (0x06, 0x00)
                                Sleep (0x64)
                            }

                            If ((Local1 != 0xFF))
                            {
                                \WBEC (0x07, Local1)
                            }

                            If ((Local0 != 0xFF))
                            {
                                \WBEC (0x06, Local0)
                            }
                        }

                        If ((Arg0 == 0x03)) {}
                        If ((Arg0 == 0x07))
                        {
                            Sleep (0x01F4)
                        }
                    }

                    Method (EVNT, 1, NotSerialized)
                    {
                        If (\H8DR)
                        {
                            If (Arg0)
                            {
                                HAM5 |= 0x04
                            }
                            Else
                            {
                                HAM5 &= 0xFB
                            }
                        }
                        ElseIf (Arg0)
                        {
                            \MBEC (0x15, 0xFF, 0x04)
                        }
                        Else
                        {
                            \MBEC (0x15, 0xFB, 0x00)
                        }
                    }

                    Name (USPS, 0x00)
                    PowerResource (PUBS, 0x03, 0x0000)
                    {
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (\H8DR)
                            {
                                Local0 = HUBS
                            }
                            Else
                            {
                                Local0 = (\RBEC (0x3B) & 0x10)
                            }

                            If (Local0)
                            {
                                Return (0x01)
                            }
                            Else
                            {
                                Return (0x00)
                            }
                        }

                        Method (_ON, 0, NotSerialized)  // _ON_: Power On
                        {
                            Local0 = 0x64
                            While ((USPS && Local0))
                            {
                                Sleep (0x01)
                                Local0--
                            }

                            If (\H8DR)
                            {
                                HUBS = 0x01
                            }
                            Else
                            {
                                \MBEC (0x3B, 0xFF, 0x10)
                            }
                        }

                        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                        {
                            USPS = 0x01
                            If (\H8DR)
                            {
                                HUBS = 0x00
                            }
                            Else
                            {
                                \MBEC (0x3B, 0xEF, 0x00)
                            }

                            Sleep (0x14)
                            USPS = 0x00
                        }
                    }

                    Method (CHKS, 0, NotSerialized)
                    {
                        Local0 = 0x03E8
                        While (HMPR)
                        {
                            Sleep (0x01)
                            Local0--
                            If (!Local0)
                            {
                                Return (0x8080)
                            }
                        }

                        If (HMDN)
                        {
                            Return (Zero)
                        }

                        Return (0x8081)
                    }

                    Method (LPMD, 0, NotSerialized)
                    {
                        Local0 = 0x00
                        Local1 = 0x00
                        Local2 = 0x00
                        Local4 = 0x00
                        If (((OSID == 0x00) || (OSID == 0x01)))
                        {
                            Local4 = 0x5A
                            If ((HWAT == 0x2D))
                            {
                                Local4 = 0x2D
                            }
                        }
                        Else
                        {
                            Local4 = 0x41
                        }

                        If (\H8DR)
                        {
                            If (HPAC)
                            {
                                If (HPLO)
                                {
                                    Local0 = \LPST
                                }
                                ElseIf ((HWAT < Local4))
                                {
                                    If (HB0A)
                                    {
                                        If (((HB0S & 0x10) || ((HB0S & 0x07) < 0x05)))
                                        {
                                            Local1 = 0x01
                                        }
                                    }
                                    Else
                                    {
                                        Local1 = 0x01
                                    }

                                    If (HB1A)
                                    {
                                        If (((HB1S & 0x10) || ((HB1S & 0x07) < 0x05)))
                                        {
                                            Local2 = 0x01
                                        }
                                    }
                                    Else
                                    {
                                        Local2 = 0x01
                                    }

                                    If ((Local1 && Local2))
                                    {
                                        Local0 = \LPST
                                    }
                                }
                            }
                        }
                        ElseIf ((\RBEC (0x46) & 0x10))
                        {
                            If ((\RBEC (0x34) & 0x80))
                            {
                                Local0 = \LPST
                            }
                            ElseIf ((\RBEC (0xC9) < Local4))
                            {
                                Local3 = \RBEC (0x38)
                                If ((Local3 & 0x80))
                                {
                                    If (((Local3 & 0x10) || ((Local3 & 0x07) < 0x05)))
                                    {
                                        Local1 = 0x01
                                    }
                                }
                                Else
                                {
                                    Local2 = 0x01
                                }

                                Local3 = \RBEC (0x39)
                                If ((Local3 & 0x80))
                                {
                                    If (((Local3 & 0x10) || ((Local3 & 0x07) < 0x05)))
                                    {
                                        Local1 = 0x01
                                    }
                                }
                                Else
                                {
                                    Local2 = 0x01
                                }

                                If ((Local1 && Local2))
                                {
                                    Local0 = \LPST
                                }
                            }
                        }

                        Return (Local0)
                    }

                    Method (CLPM, 0, NotSerialized)
                    {
                        If ((\PPMF & 0x01))
                        {
                            If ((\OSPX || \CPPX))
                            {
                                \PNTF (0x80)
                            }
                            Else
                            {
                                Local0 = LPMD ()
                                If (Local0)
                                {
                                    \STEP (0x04)
                                }
                                Else
                                {
                                    \STEP (0x05)
                                }
                            }
                        }
                    }

                    Mutex(MCPU, 0)
                    Method (_Q10, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x10
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x01))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1001)
                        }
                    }

                    Method (_Q11, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x11
                        Noop
                    }

                    Method (_Q12, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x12
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x02))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1002)
                        }
                    }

                    Method (_Q13, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x13
                        If (\_SB.PCI0.LPC.EC.HKEY.DHKC)
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1004)
                        }
                        Else
                        {
                        }
                    }

                    Method (_Q64, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x64
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x10))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1005)
                        }
                    }

                    Method (_Q65, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x65
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x20))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1006)
                        }
                    }

                    Method (_Q16, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x16
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x40))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1007)
                        }
                        Else
                        {
                            If ((\VHYB (0x03, 0x00) == 0x03))
                            {
                                Notify (\_SB.PCI0.IGPU, 0x80)
                                Return (Zero)
                            }

                            If (VIGD)
                            {
                                \_SB.PCI0.IGPU.VSWT ()
                            }
                            Else
                            {
                                \_SB.PCI0.PEG.VID.VSWT ()
                            }
                        }
                    }

                    Method (_Q17, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x17
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x80))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1008)
                        }
                        ElseIf (!\WNTF)
                        {
                            VEXP ()
                        }
                    }

                    Method (_Q18, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x18
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x0100))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1009)
                        }

                        Noop
                    }

                    Method (_Q1A, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x1A
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x0400))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x100B)
                        }
                    }

                    Method (_Q1B, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x1B
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x100C)
                    }

                    Method (_Q62, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x62
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x1000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x100D)
                        }
                    }

                    Method (_Q60, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x60
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x2000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x100E)
                        }
                    }

                    Method (_Q61, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x61
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x4000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x100F)
                        }
                    }

                    Method (_Q1F, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x1F
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x00020000))
                        {
                            If ((PKLI & 0x0C00))
                            {
                                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1012)
                            }
                        }

                        \UCMS (0x0E)
                    }

                    Method (_Q1C, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x1C
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x01000000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1019)
                        }
                    }

                    Method (_Q1D, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x1D
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x02000000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x101A)
                        }
                    }

                    Method (_Q66, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x66
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x10000000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x101D)
                        }
                    }

                    Method (_Q67, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x67
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x20000000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x101E)
                        }
                    }

                    Method (_Q68, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x68
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x40000000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x101F)
                        }
                    }

                    Method (_Q69, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x69
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x80000000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1020)
                        }
                    }

                    Method (_Q26, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x26
                        If (VIGD)
                        {
                            If (\WVIS)
                            {
                                \VBTD ()
                            }

                            \_SB.PCI0.LPC.EC.BRNS ()
                        }
                        Else
                        {
                            \UCMS (0x12)
                        }

                        Sleep (0x01F4)
                        Notify (AC, 0x80)
                        If (\WXPF)
                        {
                            Acquire (MCPU, 0xFFFF)
                        }

                        PWRS = 0x01
                        If ((\PPMF & 0x01))
                        {
                            If ((\OSPX || \CPPX))
                            {
                                \PNTF (0x80)
                            }
                        }

                        If (\WXPF)
                        {
                            Sleep (0x64)
                        }

                        If (\OSC4)
                        {
                            \PNTF (0x81)
                        }

                        If (\WXPF)
                        {
                            Release (MCPU)
                        }

                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6040)
                    }

                    Method (_Q27, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x27
                        If (VIGD)
                        {
                            If (\WVIS)
                            {
                                \VBTD ()
                            }

                            \_SB.PCI0.LPC.EC.BRNS ()
                        }
                        Else
                        {
                            \UCMS (0x12)
                        }

                        If (\_SB.PCI0.PEG.VID.ISOP ())
                        {
                            Notify (\_SB.PCI0.PEG.VID, 0xDF)
                        }

                        Sleep (0x01F4)
                        Notify (AC, 0x80)
                        If (\WXPF)
                        {
                            Acquire (MCPU, 0xFFFF)
                        }

                        PWRS = 0x00
                        If ((\PPMF & 0x01))
                        {
                            If ((\OSPX || \CPPX))
                            {
                                \PNTF (0x80)
                            }
                        }

                        If (\WXPF)
                        {
                            Sleep (0x64)
                        }

                        If (\OSC4)
                        {
                            \PNTF (0x81)
                        }

                        If (\WXPF)
                        {
                            Release (MCPU)
                        }

                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6040)
                    }

                    Method (_Q2A, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x2A
                        \VCMS (0x01, \_SB.LID._LID ())
                        If ((\ILNF == 0x00))
                        {
                            If (\IOST)
                            {
                                If (!\ISOC (0x00))
                                {
                                    \IOST = 0x00
                                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x60D0)
                                }
                            }
                            Else
                            {
                                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x5002)
                                If ((\PLUX == 0x00))
                                {
                                    If (VIGD)
                                    {
                                        \_SB.PCI0.IGPU.GLIS (0x01)
                                        \_SB.PCI0.IGPU.VLOC (0x01)
                                    }
                                    Else
                                    {
                                        \_SB.PCI0.PEG.VID.VLOC (0x01)
                                    }

                                    Notify (\_SB.LID, 0x80)
                                }
                            }
                        }
                    }

                    Method (_Q2B, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x2B
                        \UCMS (0x0D)
                        \VCMS (0x01, \_SB.LID._LID ())
                        If ((\ILNF == 0x00))
                        {
                            If ((\IOEN && !\IOST))
                            {
                                If (!\ISOC (0x01))
                                {
                                    \IOST = 0x01
                                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x60D0)
                                }
                            }
                            Else
                            {
                                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x5001)
                                If ((\PLUX == 0x00))
                                {
                                    If (VIGD)
                                    {
                                        \_SB.PCI0.IGPU.GLIS (0x00)
                                    }
                                    Else
                                    {
                                        \_SB.PCI0.PEG.VID.VLOC (0x00)
                                    }

                                    Notify (\_SB.LID, 0x80)
                                }
                            }
                        }
                    }

                    Method (_Q3D, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x3E
                    }

                    Method (_Q48, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x48
                        If ((\PPMF & 0x01))
                        {
                            If ((\OSPX || \CPPX))
                            {
                                \PNTF (0x80)
                            }
                            Else
                            {
                                \STEP (0x04)
                            }

                            \_SB.PCI0.LPC.EC.CALM = 0x01
                        }
                    }

                    Method (_Q49, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x49
                        If ((\PPMF & 0x01))
                        {
                            If ((\OSPX || \CPPX))
                            {
                                \PNTF (0x80)
                            }
                            Else
                            {
                                \STEP (0x05)
                            }
                        }
                    }

                    Method (_Q7F, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x7F
                        Fatal (0x01, 0x80010000, 0x1FFE)
                    }

                    Method (_Q4E, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x4E
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6011)
                    }

                    Method (_Q4F, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x4F
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6012)
                    }

                    Method (_Q46, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x46
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6012)
                    }

                    Method (_Q22, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x22
                        CLPM ()
                        If (HB0A)
                        {
                            Notify (BAT0, 0x80)
                        }
                    }

                    Method (_Q4A, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x4A
                        CLPM ()
                        Notify (BAT0, 0x81)
                    }

                    Method (_Q4B, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x4B
                        Notify (BAT0, 0x80)
                    }

                    Method (_Q24, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x24
                        CLPM ()
                        Notify (BAT0, 0x80)
                    }

                    Method (BATW, 1, NotSerialized)
                    {
                        If (\BT2T) {}
                    }

                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0xA0), 
                        SBR1,8,SBR2,8, 
                        SBF1,8,SBF2,8, 
                        SBAE,   16, 
                        SBRS,   16, 
                        SBC1,8,SBC2,8, 
                        SVO1,8,SVO2,8, 
                        SBAF,   16, 
                        SBBS,   16
                    }

                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0xA0), 
                        SBM1,8,SBM2,8, 
                        SBMD,   16, 
                        SBCC,   16
                    }

                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0xA0), 
                        SDC1,8,SDC2,8, 
                        SDD1,8,SDD2,8, 
                        SBOM,   16, 
                        SBSI,   16, 
                        SBDT,   16, 
                        SBN1,8,SBN2,8,
                    }

                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0xA0), 
                        SCH0,8,SCH1,8,SCH2,8,SCH3,8
                    }

                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0xA0), 
                        SBMN,   128
                    }

                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0xA0), 
                        SBDN,   128
                    }

                    Mutex(BATM, 0)
                    Method (GBIF, 3, NotSerialized)
                    {
                        Acquire (BATM, 0xFFFF)
                        If (Arg2)
                        {
                            HIID = (Arg0 | 0x01)
                            Local7 = B1B2(SBM1,SBM2)
                            Local7 >>= 0x0F
                            Arg1 [0x00] = (Local7 ^ 0x01)
                            HIID = Arg0
                            If (Local7)
                            {
                                Local1 = (B1B2(SBF1,SBF2) * 0x0A)
                            }
                            Else
                            {
                                Local1 = B1B2(SBF1,SBF2)
                            }

                            Arg1 [0x02] = Local1
                            HIID = (Arg0 | 0x02)
                            If (Local7)
                            {
                                Local0 = (B1B2(SDC1,SDC2) * 0x0A)
                            }
                            Else
                            {
                                Local0 = B1B2(SDC1,SDC2)
                            }

                            Arg1 [0x01] = Local0
                            Divide (Local1, 0x14, Local2, Arg1 [0x05])
                            If (Local7)
                            {
                                Arg1 [0x06] = 0xC8
                            }
                            ElseIf (B1B2(SDD1,SDD2))
                            {
                                Divide (0x00030D40, B1B2(SDD1,SDD2), Local2, Arg1 [0x06])
                            }
                            Else
                            {
                                Arg1 [0x06] = 0x00
                            }

                            Arg1 [0x04] = B1B2(SDD1,SDD2)
                            Local0 = B1B2(SBN1,SBN2)
                            Name (SERN, Buffer (0x06)
                            {
                                "     "
                            })
                            Local2 = 0x04
                            While (Local0)
                            {
                                Divide (Local0, 0x0A, Local1, Local0)
                                SERN [Local2] = (Local1 + 0x30)
                                Local2--
                            }

                            Arg1 [0x0A] = SERN
                            HIID = (Arg0 | 0x06)
                            Arg1 [0x09] = RECB(0xA0, 128)
                            HIID = (Arg0 | 0x04)
                            Name (BTYP, Buffer (0x05)
                            {
                                 0x00, 0x00, 0x00, 0x00, 0x00                   
                            })
                            BTYP = B1B4(SCH0,SCH1,SCH2,SCH3)
                            Arg1 [0x0B] = BTYP
                            HIID = (Arg0 | 0x05)
                            Arg1 [0x0C] = RECB(0xA0, 128)
                        }
                        Else
                        {
                            Arg1 [0x01] = 0xFFFFFFFF
                            Arg1 [0x05] = 0x00
                            Arg1 [0x06] = 0x00
                            Arg1 [0x02] = 0xFFFFFFFF
                        }

                        Release (BATM)
                        Return (Arg1)
                    }

                    Method (GBST, 4, NotSerialized)
                    {
                        Acquire (BATM, 0xFFFF)
                        If ((Arg1 & 0x20))
                        {
                            Local0 = 0x02
                        }
                        ElseIf ((Arg1 & 0x40))
                        {
                            Local0 = 0x01
                        }
                        Else
                        {
                            Local0 = 0x00
                        }

                        If ((Arg1 & 0x07)) {}
                        Else
                        {
                            Local0 |= 0x04
                        }

                        If (((Arg1 & 0x07) == 0x07))
                        {
                            Local0 = 0x04
                            Local1 = 0x00
                            Local2 = 0x00
                            Local3 = 0x00
                        }
                        Else
                        {
                            HIID = Arg0
                            Local3 = B1B2(SVO1,SVO2)
                            If (Arg2)
                            {
                                Local2 = (B1B2(SBR1,SBR2) * 0x0A)
                            }
                            Else
                            {
                                Local2 = B1B2(SBR1,SBR2)
                            }

                            Local1 = B1B2(SBC1,SBC2)
                            If ((Local1 >= 0x8000))
                            {
                                If ((Local0 & 0x01))
                                {
                                    Local1 = (0x00010000 - Local1)
                                }
                                Else
                                {
                                    Local1 = 0x00
                                }
                            }
                            ElseIf (!(Local0 & 0x02))
                            {
                                Local1 = 0x00
                            }

                            If (Arg2)
                            {
                                Local1 *= Local3
                                Divide (Local1, 0x03E8, Local7, Local1)
                            }
                        }

                        Arg3 [0x00] = Local0
                        Arg3 [0x01] = Local1
                        Arg3 [0x02] = Local2
                        Arg3 [0x03] = Local3
                        Release (BATM)
                        Return (Arg3)
                    }

                    Device (BAT0)
                    {
                        Name (_HID, EisaId ("PNP0C0A"))  // _HID: Hardware ID
                        Name (_UID, 0x00)  // _UID: Unique ID
                        Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                        {
                            \_SB
                        })
                        Name (B0ST, 0x00)
                        Name (BT0I, Package (0x0D)
                        {
                            0x00, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0x01, 
                            0x2A30, 
                            0x00, 
                            0x00, 
                            0x01, 
                            0x01, 
                            "", 
                            "", 
                            "", 
                            ""
                        })
                        Name (BT0P, Package (0x04) {})
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (\H8DR)
                            {
                                B0ST = HB0A
                            }
                            ElseIf ((\RBEC (0x38) & 0x80))
                            {
                                B0ST = 0x01
                            }
                            Else
                            {
                                B0ST = 0x00
                            }

                            If (B0ST)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x0F)
                            }
                        }

                        Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
                        {
                            Local7 = 0x00
                            Local6 = 0x0A
                            While ((!Local7 && Local6))
                            {
                                If (HB0A)
                                {
                                    If (((HB0S & 0x07) == 0x07))
                                    {
                                        Sleep (0x03E8)
                                        Local6--
                                    }
                                    Else
                                    {
                                        Local7 = 0x01
                                    }
                                }
                                Else
                                {
                                    Local6 = 0x00
                                }
                            }

                            Return (GBIF (0x00, BT0I, Local7))
                        }

                        Method (_BST, 0, NotSerialized)  // _BST: Battery Status
                        {
                            Local0 = (DerefOf (BT0I [0x00]) ^ 0x01)
                            Return (GBST (0x00, HB0S, Local0, BT0P))
                        }

                        Method (_BTP, 1, NotSerialized)  // _BTP: Battery Trip Point
                        {
                            HAM4 &= 0xEF
                            If (Arg0)
                            {
                                Local1 = Arg0
                                If (!DerefOf (BT0I [0x00]))
                                {
                                    Divide (Local1, 0x0A, Local0, Local1)
                                }

                                HT0L = (Local1 & 0xFF)
                                HT0H = ((Local1 >> 0x08) & 0xFF)
                                HAM4 |= 0x10
                            }
                        }
                    }

                    Device (AC)
                    {
                        Name (_HID, "ACPI0003")  // _HID: Hardware ID
                        Name (_UID, 0x00)  // _UID: Unique ID
                        Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                        {
                            \_SB
                        })
                        Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
                        {
                            If (\H8DR)
                            {
                                Return (HPAC)
                            }
                            ElseIf ((\RBEC (0x46) & 0x10))
                            {
                                Return (0x01)
                            }
                            Else
                            {
                                Return (0x00)
                            }
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }
                    }

                    Device (HKEY)
                    {
                        Name (_HID, EisaId ("LEN0068"))  // _HID: Hardware ID
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (MHKV, 0, NotSerialized)
                        {
                            Return (0x0100)
                        }

                        Name (DHKC, 0x00)
                        Name (DHKB, 0x01)
                        Mutex(XDHK, 0)
                        Name (DHKH, 0x00)
                        Name (DHKW, 0x00)
                        Name (DHKS, 0x00)
                        Name (DHKD, 0x00)
                        Name (DHKN, 0x0808)
                        Name (DHKT, 0x00)
                        Name (DHWW, 0x00)
                        Method (MHKA, 0, NotSerialized)
                        {
                            Return (0xFFFFFFFB)
                        }

                        Method (MHKN, 0, NotSerialized)
                        {
                            Return (DHKN)
                        }

                        Method (MHKK, 1, NotSerialized)
                        {
                            If (DHKC)
                            {
                                Return ((DHKN & Arg0))
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Method (MHKM, 2, NotSerialized)
                        {
                            Acquire (XDHK, 0xFFFF)
                            If ((Arg0 > 0x20))
                            {
                                Noop
                            }
                            Else
                            {
                                Local0 = (One << Arg0--)
                                If ((Local0 & 0xFFFFFFFB))
                                {
                                    If (Arg1)
                                    {
                                        DHKN |= Local0
                                    }
                                    Else
                                    {
                                        DHKN &= (Local0 ^ 0xFFFFFFFF)
                                    }
                                }
                                Else
                                {
                                    Noop
                                }
                            }

                            Release (XDHK)
                        }

                        Method (MHKC, 1, NotSerialized)
                        {
                            DHKC = Arg0
                        }

                        Method (MHKP, 0, NotSerialized)
                        {
                            Acquire (XDHK, 0xFFFF)
                            If (DHWW)
                            {
                                Local1 = DHWW
                                DHWW = Zero
                            }
                            ElseIf (DHKW)
                            {
                                Local1 = DHKW
                                DHKW = Zero
                            }
                            ElseIf (DHKD)
                            {
                                Local1 = DHKD
                                DHKD = Zero
                            }
                            ElseIf (DHKS)
                            {
                                Local1 = DHKS
                                DHKS = Zero
                            }
                            ElseIf (DHKT)
                            {
                                Local1 = DHKT
                                DHKT = Zero
                            }
                            Else
                            {
                                Local1 = DHKH
                                DHKH = Zero
                            }

                            Release (XDHK)
                            Return (Local1)
                        }

                        Method (MHKE, 1, NotSerialized)
                        {
                            DHKB = Arg0
                            Acquire (XDHK, 0xFFFF)
                            DHKH = Zero
                            DHKW = Zero
                            DHKS = Zero
                            DHKD = Zero
                            DHKT = Zero
                            DHWW = Zero
                            Release (XDHK)
                        }

                        Method (MHKQ, 1, NotSerialized)
                        {
                            If (DHKB)
                            {
                                If (DHKC)
                                {
                                    Acquire (XDHK, 0xFFFF)
                                    If ((Arg0 < 0x1000)) {}
                                    ElseIf ((Arg0 < 0x2000))
                                    {
                                        DHKH = Arg0
                                    }
                                    ElseIf ((Arg0 < 0x3000))
                                    {
                                        DHKW = Arg0
                                    }
                                    ElseIf ((Arg0 < 0x4000))
                                    {
                                        DHKS = Arg0
                                    }
                                    ElseIf ((Arg0 < 0x5000))
                                    {
                                        DHKD = Arg0
                                    }
                                    ElseIf ((Arg0 < 0x6000))
                                    {
                                        DHKH = Arg0
                                    }
                                    ElseIf ((Arg0 < 0x7000))
                                    {
                                        DHKT = Arg0
                                    }
                                    ElseIf ((Arg0 < 0x8000))
                                    {
                                        DHWW = Arg0
                                    }
                                    Else
                                    {
                                    }

                                    Release (XDHK)
                                    Notify (HKEY, 0x80)
                                }
                                ElseIf ((Arg0 == 0x1004)) {}
                            }
                        }

                        Method (MHKB, 1, NotSerialized)
                        {
                            If ((Arg0 == 0x00))
                            {
                                \_SB.PCI0.LPC.EC.BEEP (0x11)
                                \LIDB = 0x00
                            }
                            ElseIf ((Arg0 == 0x01))
                            {
                                \_SB.PCI0.LPC.EC.BEEP (0x10)
                                \LIDB = 0x01
                            }
                            Else
                            {
                            }
                        }

                        Method (MHKD, 0, NotSerialized)
                        {
                            If ((\PLUX == 0x00))
                            {
                                If (VIGD)
                                {
                                    \_SB.PCI0.IGPU.VLOC (0x00)
                                }
                                Else
                                {
                                    \_SB.PCI0.PEG.VID.VLOC (0x00)
                                }
                            }
                        }

                        Method (MHQC, 1, NotSerialized)
                        {
                            If (\WNTF)
                            {
                                If ((Arg0 == 0x00))
                                {
                                    Return (\CWAC)
                                }
                                ElseIf ((Arg0 == 0x01))
                                {
                                    Return (\CWAP)
                                }
                                ElseIf ((Arg0 == 0x02))
                                {
                                    Return (\CWAT)
                                }
                                Else
                                {
                                    Noop
                                }
                            }
                            Else
                            {
                                Noop
                            }

                            Return (0x00)
                        }

                        Method (MHGC, 0, NotSerialized)
                        {
                            If (\WNTF)
                            {
                                Acquire (XDHK, 0xFFFF)
                                If (CKC4 (0x00))
                                {
                                    Local0 = 0x03
                                }
                                Else
                                {
                                    Local0 = 0x04
                                }

                                Release (XDHK)
                                Return (Local0)
                            }
                            Else
                            {
                                Noop
                            }

                            Return (0x00)
                        }

                        Method (MHSC, 1, NotSerialized)
                        {
                            If ((\CWAC && \WNTF))
                            {
                                Acquire (XDHK, 0xFFFF)
                                If (\OSC4)
                                {
                                    If ((Arg0 == 0x03))
                                    {
                                        If (!\CWAS)
                                        {
                                            \PNTF (0x81)
                                            \CWAS = 0x01
                                        }
                                    }
                                    ElseIf ((Arg0 == 0x04))
                                    {
                                        If (\CWAS)
                                        {
                                            \PNTF (0x81)
                                            \CWAS = 0x00
                                        }
                                    }
                                    Else
                                    {
                                        Noop
                                    }
                                }

                                Release (XDHK)
                            }
                            Else
                            {
                                Noop
                            }
                        }

                        Method (CKC4, 1, NotSerialized)
                        {
                            Local0 = 0x00
                            If (\C4WR)
                            {
                                If (!\C4AC)
                                {
                                    Local0 |= 0x01
                                }
                            }

                            If (\C4NA)
                            {
                                Local0 |= 0x02
                            }

                            If ((\CWAC && \CWAS))
                            {
                                Local0 |= 0x04
                            }

                            Local0 &= ~Arg0
                            Return (Local0)
                        }

                        Method (MHQE, 0, NotSerialized)
                        {
                            Return (0x00)
                        }

                        Method (MHGE, 0, NotSerialized)
                        {
                            If ((\C4WR && \C4AC))
                            {
                                Return (0x04)
                            }

                            Return (0x03)
                        }

                        Method (MHSE, 1, NotSerialized)
                        {
                            If (\C4WR)
                            {
                                Local0 = \C4AC
                                If ((Arg0 == 0x03))
                                {
                                    \C4AC = 0x00
                                    If ((Local0 ^ \C4AC))
                                    {
                                        If (\OSC4)
                                        {
                                            \PNTF (0x81)
                                        }
                                    }
                                }
                                ElseIf ((Arg0 == 0x04))
                                {
                                    \C4AC = 0x01
                                    If ((Local0 ^ \C4AC))
                                    {
                                        If (\OSC4)
                                        {
                                            \PNTF (0x81)
                                        }
                                    }
                                }
                            }
                        }

                        Method (UAWO, 1, NotSerialized)
                        {
                            Return (\UAWS (Arg0))
                        }

                        Method (MLCG, 1, NotSerialized)
                        {
                            Local0 = \KBLS (0x00, 0x00)
                            Return (Local0)
                        }

                        Method (MLCS, 1, NotSerialized)
                        {
                            Local0 = \KBLS (0x01, Arg0)
                            If (!(Local0 & 0x80000000))
                            {
                                If ((Arg0 & 0x00010000))
                                {
                                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6001)
                                }
                                ElseIf (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x00020000))
                                {
                                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1012)
                                }
                            }

                            Return (Local0)
                        }

                        Method (DSSG, 1, NotSerialized)
                        {
                            Local0 = (0x0400 | \PDCI)
                            Return (Local0)
                        }

                        Method (DSSS, 1, NotSerialized)
                        {
                            \PDCI |= Arg0
                        }

                        Method (SBSG, 1, NotSerialized)
                        {
                            Return (\SYBC (0x00, 0x00))
                        }

                        Method (SBSS, 1, NotSerialized)
                        {
                            Return (\SYBC (0x01, Arg0))
                        }

                        Method (PBLG, 1, NotSerialized)
                        {
                            Local0 = \BRLV
                            Local1 = (Local0 | 0x0F00)
                            Return (Local1)
                        }

                        Method (PBLS, 1, NotSerialized)
                        {
                            \BRLV = Arg0
                            If (\VIGD)
                            {
                                \_SB.PCI0.LPC.EC.BRNS ()
                            }
                            Else
                            {
                                \VBRC (\BRLV)
                            }

                            If (!\NBCF)
                            {
                                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6050)
                            }

                            Return (0x00)
                        }

                        Method (PMSG, 1, NotSerialized)
                        {
                            Local0 = \PRSM (0x00, 0x00)
                            Return (Local0)
                        }

                        Method (PMSS, 1, NotSerialized)
                        {
                            \PRSM (0x01, Arg0)
                            Return (0x00)
                        }

                        Method (ISSG, 1, NotSerialized)
                        {
                            Local0 = \ISSP
                            Local0 |= 0x80
                            Local0 |= (\ISCG & 0x30)
                            Return (0x00)
                        }

                        Method (ISSS, 1, NotSerialized)
                        {
                            \ISCG = Arg0
                            Return (0x00)
                        }

                        Method (FFSG, 1, NotSerialized)
                        {
                            Return (\IFRS (0x00, 0x00))
                        }

                        Method (FFSS, 1, NotSerialized)
                        {
                            \IFRS (0x01, Arg0)
                            Return (0x00)
                        }

                        Method (GMKS, 0, NotSerialized)
                        {
                            Local0 = (0x01 ^ \_SB.PCI0.LPC.EC.HKLK)
                            Local0 |= 0x0200
                            Return (Local0)
                        }

                        Method (SMKS, 1, NotSerialized)
                        {
                            If ((Arg0 & 0x01))
                            {
                                \_SB.PCI0.LPC.EC.HKLK = 0x00
                            }
                            Else
                            {
                                \_SB.PCI0.LPC.EC.HKLK = 0x01
                            }

                            FNSC (0x03, \_SB.PCI0.LPC.EC.HKLK)
                            Return (0x00)
                        }

                        Method (INSG, 1, NotSerialized)
                        {
                            Local0 = \IOEN
                            Local0 |= (\IOST << 0x07)
                            Local0 |= (\IOCP << 0x08)
                            Return (Local0)
                        }

                        Method (INSS, 1, NotSerialized)
                        {
                            If ((\IOCP && (Arg0 & 0x01)))
                            {
                                \IOEN = 0x01
                            }
                            Else
                            {
                                \IOEN = 0x00
                                If (\IOST)
                                {
                                    If (!\ISOC (0x00))
                                    {
                                        \IOST = 0x00
                                    }
                                }
                            }

                            Return (0x00)
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC.HKEY)
                    {
                        Name (INDV, 0x00)
                        Method (MHQI, 0, NotSerialized)
                        {
                            Return (0x00)
                        }

                        Method (MHGI, 1, NotSerialized)
                        {
                            Name (RETB, Buffer (0x10) {})
                            CreateByteField (RETB, 0x00, MHGS)
                            Local0 = (0x01 << Arg0)
                            If ((INDV & Local0))
                            {
                                If ((Arg0 == 0x00))
                                {
                                    CreateField (RETB, 0x08, 0x78, BRBU)
                                    BRBU = \IPMB
                                    MHGS = 0x10
                                }
                                ElseIf ((Arg0 == 0x01))
                                {
                                    CreateField (RETB, 0x08, 0x18, RRBU)
                                    RRBU = \IPMR
                                    MHGS = 0x04
                                }
                                ElseIf ((Arg0 == 0x08))
                                {
                                    CreateField (RETB, 0x10, 0x18, ODBU)
                                    CreateByteField (RETB, 0x01, MHGZ)
                                    ODBU = \IPMO
                                    If (((^^BSTS == 0x00) && (^^BDEV == 0x03)))
                                    {
                                        MHGZ |= 0x01
                                        MHGZ |= 0x02
                                    }

                                    MHGS = 0x05
                                }
                                ElseIf ((Arg0 == 0x09))
                                {
                                    CreateField (RETB, 0x10, 0x08, AUBU)
                                    AUBU = \IPMA
                                    RETB [0x01] = 0x01
                                    MHGS = 0x03
                                }
                                ElseIf ((Arg0 == 0x02))
                                {
                                    Local1 = \VDYN (0x00, 0x00)
                                    RETB [0x02] = (Local1 & 0x0F)
                                    Local1 >>= 0x04
                                    RETB [0x01] = (Local1 & 0x0F)
                                    MHGS = 0x03
                                }
                            }

                            Return (RETB)
                        }

                        Method (MHSI, 2, NotSerialized)
                        {
                            Local0 = (0x01 << Arg0)
                            If ((INDV & Local0))
                            {
                                If ((Arg0 == 0x08))
                                {
                                    If (Arg1)
                                    {
                                        If (\H8DR)
                                        {
                                            Local1 = ^^HPBU
                                        }
                                        Else
                                        {
                                            Local1 = (\RBEC (0x47) & 0x01)
                                        }

                                        If (!Local1)
                                        {
                                            ^^BDEV = ^^BGID (0x00)
                                            ^^NBIN (Local1)
                                            ^^BDEV = ^^BGID (0x00)
                                        }
                                    }
                                }
                                ElseIf ((Arg0 == 0x02))
                                {
                                    \VDYN (0x01, Arg1)
                                }
                            }
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC)
                    {
                        Method (_Q6A, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            If (HDMC)
                            {
                                Noop
                            }
                            ElseIf (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x04000000))
                            {
                                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x101B)
                            }
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC.HKEY)
                    {
                        Method (MMTG, 0, NotSerialized)
                        {
                            Local0 = 0x0101
                            If (HDMC)
                            {
                                Local0 |= 0x00010000
                            }

                            Return (Local0)
                        }

                        Method (MMTS, 1, NotSerialized)
                        {
                            If (HDMC)
                            {
                                Noop
                            }
                            ElseIf ((Arg0 == 0x02))
                            {
                                GO69 = 0x00
                            }
                            Else
                            {
                                GO69 = 0x01
                            }

                            Local0 = \_SB.PCI0.LPC.EC.HKEY.GSMS (0x00)
                            Local0 &= 0x01
                            \_SB.PCI0.LPC.EC.HKEY.SSMS (Local0)
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC.HKEY)
                    {
                        Method (PWMC, 0, NotSerialized)
                        {
                            Return (0x01)
                        }

                        Method (PWMG, 0, NotSerialized)
                        {
                            Local0 = \_SB.PCI0.LPC.EC.PWMH
                            Local0 <<= 0x08
                            Local0 |= \_SB.PCI0.LPC.EC.PWML
                            Return (Local0)
                        }
                    }

                    Scope (\_GPE)
                    {
                        OperationRegion (GINV, SystemIO, 0x0800, 0x60)
                        Field (GINV, ByteAcc, Lock, Preserve)
                        {
                            Offset (0x0C), 
                            Offset (0x0D), 
                            GLV8,   1, 
                            Offset (0x2C), 
                            Offset (0x2D), 
                            GIV8,   1
                        }

                        Method (_L18, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
                        {
                            GIV8 = ~GIV8
                            If (GLV8)
                            {
                                Sleep (0x64)
                                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x4011)
                            }
                            Else
                            {
                                Sleep (0x64)
                                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x4010)
                            }
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC)
                    {
                        Method (_Q45, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            If (DOCD)
                            {
                                Sleep (0x64)
                                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x4010)
                            }
                            Else
                            {
                                Sleep (0x64)
                                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x4011)
                            }
                        }

                        Method (DKID, 0, NotSerialized)
                        {
                            Local0 = \_SB.PCI0.LPC.DOI0
                            Local1 = \_SB.PCI0.LPC.DOI1
                            Local2 = \_SB.PCI0.LPC.DOI2
                            Local3 = \_SB.PCI0.LPC.DOI3
                            Local0 |= (Local1 << 0x01)
                            Local0 |= (Local2 << 0x02)
                            Local0 |= (Local3 << 0x03)
                            Return (Local0)
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC.HKEY)
                    {
                        OperationRegion (GINV, SystemIO, 0x0800, 0x60)
                        Field (GINV, ByteAcc, Lock, Preserve)
                        {
                            Offset (0x0C), 
                            Offset (0x0D), 
                            GLV8,   1, 
                            Offset (0x2C), 
                            Offset (0x2D), 
                            GIV8,   1
                        }

                        Method (GDKS, 0, NotSerialized)
                        {
                            Local0 = 0x00
                            If ((GLV8 == 0x00))
                            {
                                Local0 |= 0x01
                                Local1 = \_SB.PCI0.LPC.EC.DKID ()
                                Local1 <<= 0x08
                                Local0 |= 0x00080000
                            }

                            Local0 |= 0x00080000
                            Return (Local0)
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC)
                    {
                        Method (_Q3F, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6000)
                        }

                        Method (_Q74, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            D80P = 0x74
                            If ((HKLK == 0x00))
                            {
                                \_SB.PCI0.LPC.EC.HKLK = 0x01
                                GO01 = 0x01
                            }
                            Else
                            {
                                \_SB.PCI0.LPC.EC.HKLK = 0x00
                                GO01 = 0x00
                            }

                            FNSC (0x03, \_SB.PCI0.LPC.EC.HKLK)
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6060)
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC.HKEY)
                    {
                        Method (NUMG, 0, NotSerialized)
                        {
                            Local0 = 0x03
                            Sleep (0x14)
                            If (\_SB.PCI0.LPC.EC.NULS)
                            {
                                Local0 |= 0x0100
                            }
                            Else
                            {
                                Local0 &= ~0x0100
                            }

                            Return (Local0)
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC)
                    {
                        Name (BTBF, Buffer (0x0100)
                        {
                             0x00                                           
                        })
                        OperationRegion (MMEC, SystemMemory, 0xFF000E00, 0x0100)
                        Field (MMEC, AnyAcc, Lock, Preserve)
                        {
                            TWBT,   2048
                        }

                        Method (BTIF, 0, NotSerialized)
                        {
                            BTBF = TWBT
                            Return (BTBF)
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC.HKEY)
                    {
                        Method (SBIG, 1, NotSerialized)
                        {
                            Return (\_SB.PCI0.LPC.EC.BTIF ())
                        }
                    }

                    Method (_Q7D, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x7D
                        GO05 = 0x00
                    }

                    Method (_Q7E, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x7E
                        GO05 = 0x01
                    }

                    Method (_Q7B, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        D80P = 0x7B
                        PCLK ()
                    }

                    Method (_Q78, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        APMC = 0x78
                    }

                    OperationRegion (ECRM, SystemMemory, 0xFF000000, 0x1000)
                    Field (ECRM, AnyAcc, Lock, Preserve)
                    {
                        Offset (0x400), 
                        Offset (0x45D), 
                        ERIB,   16, 
                        ERBD,   8, 
                        Offset (0x4AA), 
                        Offset (0x4AB), 
                        Offset (0x4AD), 
                            ,   4, 
                        Offset (0x4AE), 
                        PTVL,   4, 
                        Offset (0x4B0), 
                        Offset (0x4B1), 
                        Offset (0x4B2), 
                        Offset (0x4B3), 
                        Offset (0x4B4), 
                        Offset (0x4B5), 
                        Offset (0x4BC), 
                        Offset (0x4BD)
                    }

                    Mutex(FAMX, 0)
                    Method (FANG, 1, NotSerialized)
                    {
                        Acquire (FAMX, 0xFFFF)
                        ERIB = Arg0
                        Sleep (0x14)
                        Local0 = ERBD
                        Release (FAMX)
                        Return (Local0)
                    }

                    Method (FANW, 2, NotSerialized)
                    {
                        Acquire (FAMX, 0xFFFF)
                        ERIB = Arg0
                        ERBD = Arg1
                        Release (FAMX)
                        Return (Arg1)
                    }

                    Method (TUVR, 1, NotSerialized)
                    {
                        Return (0x03)
                    }

                    Method (THRO, 1, NotSerialized)
                    {
                        ITHR (Arg0)
                    }

                    Method (CLCK, 1, NotSerialized)
                    {
                    }

                    Method (PCLK, 0, NotSerialized)
                    {
                        IPCL ()
                    }

                    Method (ITHR, 1, NotSerialized)
                    {
                        If ((Arg0 == 0x00))
                        {
                            Return (SWTO)
                        }
                        ElseIf ((Arg0 == 0x01)) {}
                        ElseIf ((Arg0 == 0x02))
                        {
                            Return (PCVL)
                        }
                        Else
                        {
                            Return (0xFF)
                        }
                    }

                    Method (IPCL, 0, NotSerialized)
                    {
                        \PNTF (0x80)
                    }

                    OperationRegion (ECMM, SystemMemory, 0xFF000000, 0x1000)
                    Field (ECMM, AnyAcc, Lock, Preserve)
                    {
                        Offset (0x400), 
                        Offset (0x4A0), 
                        AATL,   1, 
                        AACL,   1, 
                        AAST,   1, 
                        AARW,   1, 
                        AAEN,   1, 
                        AAEW,   1, 
                        Offset (0x4A7), 
                        OSTT,   8, 
                        OSST,   8, 
                        THLT,   8, 
                        TCNL,   8, 
                        MODE,   1, 
                            ,   2, 
                        INIT,   1, 
                        FAN1,   1, 
                        FAN2,   1, 
                        FANT,   1, 
                        SKNM,   1, 
                        SDTM,   8, 
                        FSSN,   4, 
                        FANU,   4, 
                        PCVL,   4, 
                            ,   2, 
                        SWTO,   1, 
                        TTHR,   1, 
                        TTHM,   1, 
                        THTL,   1, 
                            ,   2, 
                        NPST,   4, 
                        CTMP,   8, 
                        CTML,   8, 
                        SKTA,   8, 
                        SKTB,   8, 
                        SKTC,   8, 
                        Offset (0x4B6), 
                        NTMP,   8, 
                        CPUJ,   3, 
                        CPNM,   3, 
                        GATY,   2, 
                        Offset (0x4B9)
                    }

                    Method (CMFC, 4, Serialized)
                    {
                        Name (_T_3, Zero)  // _T_x: Emitted by ASL Compiler
                        Name (_T_2, Zero)  // _T_x: Emitted by ASL Compiler
                        Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                        Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                        Local0 = Buffer (0x82) {}
                        CreateWordField (Local0, 0x00, RTST)
                        CreateField (Local0, 0x10, 0x0400, RTDT)
                        While (One)
                        {
                            _T_0 = ToInteger (Arg0)
                            If ((_T_0 == 0x10))
                            {
                                While (One)
                                {
                                    _T_1 = ToInteger (Arg1)
                                    If ((_T_1 == 0x01))
                                    {
                                        While (One)
                                        {
                                            _T_2 = ToInteger (Arg2)
                                            If ((_T_2 == 0x01))
                                            {
                                                RTST = 0x01
                                                RTDT = 0x00
                                                Return (Local0)
                                            }
                                            Else
                                            {
                                                RTST = 0x00
                                                RTDT = 0x00
                                                Return (Local0)
                                            }

                                            Break
                                        }
                                    }
                                    ElseIf ((_T_1 == 0x02))
                                    {
                                        RTST = 0x01
                                        RTDT = 0x11
                                        Return (Local0)
                                    }
                                    Else
                                    {
                                        RTST = 0x00
                                        RTDT = 0x00
                                        Return (Local0)
                                    }

                                    Break
                                }
                            }
                            ElseIf ((_T_0 == 0x23))
                            {
                                While (One)
                                {
                                    _T_3 = ToInteger (Arg1)
                                    If ((_T_3 == 0x10))
                                    {
                                        RTST = 0x01
                                        RTDT = 0x06
                                        Return (Local0)
                                    }
                                    Else
                                    {
                                        RTST = 0x00
                                        RTDT = 0x00
                                        Return (Local0)
                                    }

                                    Break
                                }
                            }
                            Else
                            {
                                Local1 = \CBBM (Arg0, Arg1)
                                If ((Local1 == 0xFF))
                                {
                                    RTST = 0x00
                                    RTDT = 0x00
                                    Return (Local0)
                                }
                                Else
                                {
                                    RTST = 0x01
                                    RTDT = Local1
                                    Return (Local0)
                                }
                            }

                            Break
                        }
                    }
                    Method (RE1B, 1, NotSerialized)
                    {
                        OperationRegion(ERAM, EmbeddedControl, Arg0, 1)
                        Field(ERAM, ByteAcc, NoLock, Preserve) { BYTE, 8 }
                        Return(BYTE)
                    }
                    Method (RECB, 2, Serialized)
                    // Arg0 - offset in bytes from zero-based EC
                    // Arg1 - size of buffer in bits
                    {
                        ShiftRight(Arg1, 3, Arg1)
                        Name(TEMP, Buffer(Arg1) { })
                        Add(Arg0, Arg1, Arg1)
                        Store(0, Local0)
                        While (LLess(Arg0, Arg1))
                        {
                            Store(RE1B(Arg0), Index(TEMP, Local0))
                            Increment(Arg0)
                            Increment(Local0)
                        }
                        Return(TEMP)
                    }
                }
                Method (_DSM, 4, NotSerialized)
                {
                    If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
                    Return (Package()
                    {
                        "compatible", "pci8086,8c4b",
                    })
                }
            }

            Device (PEG)
            {
                Name (_ADR, 0x00010000)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, 0x00)
                Name (LART, Package (0x02)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        \_SB.LNKA, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        \_SB.LNKB, 
                        0x00
                    }
                })
                Name (AART, Package (0x02)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        0x00, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        0x00, 
                        0x11
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (\GPIC)
                    {
                        Return (AART)
                    }
                    Else
                    {
                        Return (LART)
                    }
                }

                Mutex(MDGS, 0)
                Name (VDEE, 0x01)
                Name (VDDA, Buffer (0x04) {})
                CreateBitField (VDDA, 0x00, VUPC)
                CreateBitField (VDDA, 0x01, VQDL)
                CreateBitField (VDDA, 0x02, VQDC)
                CreateBitField (VDDA, 0x03, VQD0)
                CreateBitField (VDDA, 0x04, VQD1)
                CreateBitField (VDDA, 0x05, VQD2)
                CreateBitField (VDDA, 0x06, VQD3)
                CreateBitField (VDDA, 0x07, VQD4)
                CreateBitField (VDDA, 0x08, VQD5)
                CreateBitField (VDDA, 0x09, VSDL)
                CreateBitField (VDDA, 0x0A, VSDC)
                CreateBitField (VDDA, 0x0B, VSD0)
                CreateBitField (VDDA, 0x0C, VSD1)
                CreateBitField (VDDA, 0x0D, VSD2)
                CreateBitField (VDDA, 0x0E, VSD3)
                CreateBitField (VDDA, 0x0F, VSD4)
                CreateBitField (VDDA, 0x10, VSD5)
                CreateBitField (VDDA, 0x11, MSWT)
                CreateBitField (VDDA, 0x12, VWST)
                OperationRegion (GPIO, SystemIO, 0x0800, 0x60)
                Field (GPIO, ByteAcc, Lock, Preserve)
                {
                    Offset (0x0C), 
                        ,   17, 
                    GP17,   1, 
                    Offset (0x38), 
                        ,   18, 
                    DGRS,   1, 
                        ,   1, 
                    NVPW,   1, 
                        ,   1, 
                    DGPW,   1
                }

                OperationRegion (MWHB, SystemMemory, 0xFF000400, 0x0100)
                Field (MWHB, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x0B), 
                        ,   7, 
                    FBCL,   1, 
                    Offset (0xB7), 
                        ,   4, 
                    PFBR,   1, 
                    Offset (0xBD), 
                        ,   6, 
                    GATY,   2
                }

                OperationRegion (PEGD, SystemMemory, 0xF8008000, 0x0200)
                Field (PEGD, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x11A), 
                        ,   1, 
                    VCNP,   1
                }

                Device (VID)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    OperationRegion (VPCG, PCI_Config, 0x00, 0x0100)
                    Field (VPCG, DWordAcc, NoLock, Preserve)
                    {
                        Offset (0x2C), 
                        VSID,   32, 
                        Offset (0x40), 
                        VIDS,   32, 
                        Offset (0x70), 
                        VPWR,   8
                    }

                    OperationRegion (GPPB, PCI_Config, 0xB4, 0x14)
                    Field (GPPB, ByteAcc, NoLock, Preserve)
                    {
                        PBCI,   8, 
                        PBNP,   8, 
                        PBLS,   8, 
                        PBCC,   8, 
                        PBCR,   32, 
                        PBDI,   32, 
                        PBDO,   32, 
                        PBMR,   32
                    }

                    Name (_S3D, 0x03)  // _S3D: S3 Device State
                    Name (DGOS, 0x00)
                    Method (_INI, 0, NotSerialized)  // _INI: Initialize
                    {
                        \VUPS (0x02)
                        VQDL = \VCDL
                        VQDC = \VCDC
                        VQD0 = \VCDT
                        VQD1 = \VCDD
                        If (ISOP ())
                        {
                            \VHYB (0x04, 0x01)
                        }
                        \_SB.PCI0.PEG.VID.OMPR = 0x03
                        \_SB.PCI0.PEG.VID._PS3()
                    }

                    OperationRegion (PCNV, PCI_Config, 0x0488, 0x04)
                    Field (PCNV, AnyAcc, NoLock, Preserve)
                    {
                            ,   25, 
                        MLTF,   1
                    }

                    Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                    {
                        GPON (0x00)
                    }

                    Method (_PS1, 0, NotSerialized)  // _PS1: Power State 1
                    {
                        Noop
                    }

                    Method (_PS2, 0, NotSerialized)  // _PS2: Power State 2
                    {
                        Noop
                    }

                    Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                    {
                        GPOF (0x00)
                    }

                    Method (GPON, 1, NotSerialized)
                    {
                        If (ISOP ())
                        {
                            If (DGOS)
                            {
                                D80P = 0x22
                                DGRS = 0x00
                                DGPW = 0x01
                                NVPW = 0x01
                                While ((GP17 != 0x01))
                                {
                                    Stall (0x64)
                                }

                                W1MS (0x01)
                                W1MS (0x01)
                                DGRS = 0x01
                                Sleep (0x64)
                                \VHYB (0x08, 0x01)
                                \VHYB (0x08, 0x03)
                                Local0 = 0x01
                                Local1 = 0x01F4
                                While (VCNP)
                                {
                                    Sleep (Local0)
                                    Local1--
                                }

                                While ((\LCHK (0x01) == 0x00))
                                {
                                    Local0 = 0x20
                                    While (Local0)
                                    {
                                        If ((\LCHK (0x01) == 0x00))
                                        {
                                            Stall (0x64)
                                            Local0--
                                        }
                                        Else
                                        {
                                            Break
                                        }
                                    }

                                    If ((Local0 == Zero))
                                    {
                                        RTLK = 0x01
                                        Stall (0x64)
                                    }
                                }

                                \VHYB (0x04, 0x00)
                                DGOS = Zero
                                GATY = 0x01
                            }

                            MLTF = Zero
                            \VHYB (0x09, \_SB.PCI0.PEG.VID.HDAS)
                            FBCL = Zero
                            PFBR = One
                        }
                        Else
                        {
                            VIDS = 0x502817AA
                        }
                    }

                    Method (GPOF, 1, NotSerialized)
                    {
                        If (ISOP ())
                        {
                            If ((\_SB.PCI0.PEG.VID.OMPR == 0x03))
                            {
                                D80P = 0x33
                                \VHYB (0x08, 0x00)
                                While ((\LCHK (0x00) == 0x00))
                                {
                                    Stall (0x64)
                                }

                                \VHYB (0x08, 0x02)
                                DGRS = 0x00
                                Stall (0x14)
                                DGPW = 0x00
                                Stall (0x14)
                                NVPW = 0x00
                                DGOS = One
                                \_SB.PCI0.PEG.VID.OMPR = 0x02
                                GATY = 0x03
                                FBCL = Zero
                                PFBR = Zero
                            }
                        }
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        If (\CMPB (Arg0, ToUUID ("a486d8f8-0bda-471b-a72b-6042a6b5bee0")))
                        {
                            Return (NVOP (Arg0, Arg1, Arg2, Arg3))
                        }

                        If (\CMPB (Arg0, ToUUID ("a3132d01-8cda-49ba-a52e-bc9d46df6b81")))
                        {
                            Return (NVPS (Arg0, Arg1, Arg2, Arg3))
                        }

                        If (\WIN8)
                        {
                            If (\CMPB (Arg0, ToUUID ("d4a50b75-65c7-46f7-bfb7-41514cea0244")))
                            {
                                Return (NBCI (Arg0, Arg1, Arg2, Arg3))
                            }
                        }

                        If (\CMPB (Arg0, ToUUID ("cbeca351-067b-4924-9cbd-b46b00b86f34")))
                        {
                            If ((OSID == 0x01))
                            {
                                Return (Buffer (0x04)
                                {
                                     0x02, 0x00, 0x00, 0x80                         
                                })
                            }
                            Else
                            {
                                Return (NVGC (Arg0, Arg1, Arg2, Arg3))
                            }
                        }

                        Return (Buffer (0x04)
                        {
                             0x01, 0x00, 0x00, 0x80                         
                        })
                    }

                    OperationRegion (ATRP, SystemMemory, \ATRB, 0x00010000)
                    Field (ATRP, AnyAcc, Lock, Preserve)
                    {
                        IDX0,   262144, 
                        IDX1,   262144
                    }

                    Method (_ROM, 2, Serialized)  // _ROM: Read-Only Memory
                    {
                        If ((Arg0 >= 0x8000))
                        {
                            Return (GETB ((Arg0 - 0x8000), Arg1, IDX1))
                        }

                        If (((Arg0 + Arg1) > 0x8000))
                        {
                            Local0 = (0x8000 - Arg0)
                            Local1 = (Arg1 - Local0)
                            Local3 = GETB (Arg0, Local0, IDX0)
                            Local4 = GETB (0x00, Local1, IDX1)
                            Concatenate (Local3, Local4, Local5)
                            Return (Local5)
                        }

                        Return (GETB (Arg0, Arg1, IDX0))
                    }

                    Method (GETB, 3, Serialized)
                    {
                        Local0 = (Arg0 * 0x08)
                        Local1 = (Arg1 * 0x08)
                        CreateField (Arg2, Local0, Local1, TBF3)
                        Return (TBF3)
                    }

                    Method (VSWT, 0, NotSerialized)
                    {
                        If (\WVIS)
                        {
                            Local0 = \VEVT (0x07)
                        }
                        Else
                        {
                            Local0 = \VEVT (0x05)
                        }

                        Local1 = (0xFF & Local0)
                        If (Local1)
                        {
                            ASWT (Local1, 0x01)
                        }
                    }

                    Method (VLOC, 1, NotSerialized)
                    {
                        If ((Arg0 == \_SB.LID._LID ()))
                        {
                            \VSLD (Arg0)
                            If (((VPWR & 0x03) == 0x00))
                            {
                                If (Arg0)
                                {
                                    Local0 = \VEVT (0x01)
                                }
                                Else
                                {
                                    Local0 = \VEVT (0x02)
                                }

                                Local1 = (0x0F & Local0)
                                If (Local1)
                                {
                                    ASWT (Local1, 0x00)
                                }
                            }
                        }
                    }

                    Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
                    {
                        If ((Arg0 == 0x02))
                        {
                            Local0 = 0x14
                            While (Local0)
                            {
                                Local0--
                                Acquire (MDGS, 0xFFFF)
                                If ((0x00 == MSWT))
                                {
                                    MSWT = 0x01
                                    Local0 = 0x00
                                    VDEE = Arg0
                                }

                                Release (MDGS)
                                Sleep (0xC8)
                            }
                        }
                        Else
                        {
                            Acquire (MDGS, 0xFFFF)
                            If ((VDEE == 0x02))
                            {
                                MSWT = 0x00
                            }

                            If ((Arg0 > 0x02))
                            {
                                VDEE = 0x01
                            }
                            Else
                            {
                                VDEE = Arg0
                            }

                            Release (MDGS)
                        }
                    }

                    Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
                    {
                        Return (Package (0x08)
                        {
                            0x0100, 
                            0x0114, 
                            0x0111, 
                            0x0115, 
                            0x0112, 
                            0x0116, 
                            0x0113, 
                            0x0110
                        })
                    }

                    Method (ASWT, 2, NotSerialized)
                    {
                        If ((0x01 == VDEE))
                        {
                            Local1 = (0x01 & Arg1)
                            \VSDS (Arg0, Local1)
                        }
                        Else
                        {
                            Local0 = 0x14
                            While (Local0)
                            {
                                Local0--
                                Acquire (MDGS, 0xFFFF)
                                If ((0x00 == MSWT))
                                {
                                    Local0 = 0x00
                                    If ((0x01 & Arg1))
                                    {
                                        VUPC = 0x01
                                    }
                                    Else
                                    {
                                        VUPC = 0x00
                                    }

                                    If ((0x01 & Arg0))
                                    {
                                        VQDL = 0x01
                                    }
                                    Else
                                    {
                                        VQDL = 0x00
                                    }

                                    If ((0x02 & Arg0))
                                    {
                                        VQDC = 0x01
                                    }
                                    Else
                                    {
                                        VQDC = 0x00
                                    }

                                    If ((0x04 & Arg0))
                                    {
                                        VQD0 = 0x01
                                    }
                                    Else
                                    {
                                        VQD0 = 0x00
                                    }

                                    If ((0x08 & Arg0))
                                    {
                                        VQD1 = 0x01
                                    }
                                    Else
                                    {
                                        VQD1 = 0x00
                                    }

                                    If ((0x10 & Arg0))
                                    {
                                        VQD2 = 0x01
                                    }
                                    Else
                                    {
                                        VQD2 = 0x00
                                    }

                                    If ((0x20 & Arg0))
                                    {
                                        VQD3 = 0x01
                                    }
                                    Else
                                    {
                                        VQD3 = 0x00
                                    }

                                    If ((0x40 & Arg0))
                                    {
                                        VQD4 = 0x01
                                    }
                                    Else
                                    {
                                        VQD4 = 0x00
                                    }

                                    If ((0x80 & Arg0))
                                    {
                                        VQD5 = 0x01
                                    }
                                    Else
                                    {
                                        VQD5 = 0x00
                                    }
                                }

                                Release (MDGS)
                                Sleep (0xC8)
                            }

                            If ((0x02 & Arg1))
                            {
                                Notify (VID, 0x81)
                            }
                            Else
                            {
                                Notify (VID, 0x80)
                            }
                        }
                    }

                    Method (VDSW, 1, NotSerialized)
                    {
                        If ((VPWR == 0x00))
                        {
                            If (Arg0)
                            {
                                Local0 = \VEVT (0x03)
                            }
                            Else
                            {
                                Local0 = \VEVT (0x04)
                            }

                            Local1 = (0x0F & Local0)
                            If (Local1)
                            {
                                ASWT (Local1, 0x00)
                            }
                        }
                    }

                    Device (LCD0)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            Return (0x0110)
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            \VUPS (0x00)
                            If (\VCDL)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Return (VQDL)
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            VSDL = (Arg0 & 0x01)
                            If ((Arg0 & 0x80000000))
                            {
                                If ((Arg0 & 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (0x01)
                                }
                            }
                        }

                        Method (_DDC, 1, NotSerialized)  // _DDC: Display Data Current
                        {
                            If (ISOP ())
                            {
                                Return (0x00)
                            }

                            If ((Arg0 == 0x01))
                            {
                                Return (\VEDI)
                            }
                            ElseIf ((Arg0 == 0x02))
                            {
                                Return (\VEDI)
                            }

                            Return (0x00)
                        }
                    }

                    Device (CRT0)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            Return (0x0100)
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            \VUPS (0x01)
                            If (\VCSS)
                            {
                                If (\VCDC)
                                {
                                    Return (0x1F)
                                }
                                Else
                                {
                                    Return (0x1D)
                                }
                            }
                            ElseIf (\VCDC)
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (0x0D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Return (VQDC)
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            VSDC = (Arg0 & 0x01)
                            If ((Arg0 & 0x80000000))
                            {
                                If ((Arg0 & 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (0x01)
                                }
                            }
                        }
                    }

                    Device (DVI0)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            Return (0x0111)
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            \VUPS (0x00)
                            If (\VCDD)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Return (VQD1)
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            VSD1 = (Arg0 & 0x01)
                            If ((Arg0 & 0x80000000))
                            {
                                If ((Arg0 & 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (0x01)
                                }
                            }
                        }
                    }

                    Device (DP0)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            Return (0x0114)
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            \VUPS (0x00)
                            If (\VCDT)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Return (VQD0)
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            VSD0 = (Arg0 & 0x01)
                            If ((Arg0 & 0x80000000))
                            {
                                If ((Arg0 & 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (0x01)
                                }
                            }
                        }
                    }

                    Device (DVI1)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            Return (0x0112)
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            \VUPS (0x00)
                            If (\VCDD)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Return (VQD3)
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            VSD3 = (Arg0 & 0x01)
                            If ((Arg0 & 0x80000000))
                            {
                                If ((Arg0 & 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (0x01)
                                }
                            }
                        }
                    }

                    Device (DP1)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            Return (0x0115)
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            \VUPS (0x00)
                            If (\VCDT)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Return (VQD2)
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            VSD2 = (Arg0 & 0x01)
                            If ((Arg0 & 0x80000000))
                            {
                                If ((Arg0 & 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (0x01)
                                }
                            }
                        }
                    }

                    Device (DVI2)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            Return (0x0113)
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            \VUPS (0x00)
                            If (\VCDD)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Return (VQD5)
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            VSD5 = (Arg0 & 0x01)
                            If ((Arg0 & 0x80000000))
                            {
                                If ((Arg0 & 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (0x01)
                                }
                            }
                        }
                    }

                    Device (DP2)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            Return (0x0116)
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            \VUPS (0x00)
                            If (\VCDT)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Return (VQD4)
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            VSD4 = (Arg0 & 0x01)
                            If ((Arg0 & 0x80000000))
                            {
                                If ((Arg0 & 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (0x01)
                                }
                            }
                        }
                    }

                    Method (DSWT, 1, NotSerialized)
                    {
                        If (VSDL)
                        {
                            Local0 = 0x01
                        }
                        Else
                        {
                            Local0 = 0x00
                        }

                        If (VSDC)
                        {
                            Local0 |= 0x02
                        }

                        If (VSD0)
                        {
                            Local0 |= 0x08
                        }

                        If (Local0)
                        {
                            If (VUPC)
                            {
                                \VSDS (Local0, Arg0)
                            }
                        }
                        Else
                        {
                            Noop
                        }
                    }
                }

                Scope (\_SB.PCI0.PEG.VID)
                {
                    Method (NBCI, 4, Serialized)
                    {
                        Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                        Debug = "------- NBCI DSM --------"
                        While (One)
                        {
                            _T_0 = ToInteger (Arg2)
                            If ((_T_0 == 0x00))
                            {
                                Local0 = Buffer (0x04)
                                    {
                                         0x00, 0x00, 0x00, 0x00                         
                                    }
                                Divide (0x00, 0x08, Local2, Local1)
                                Local2 = (0x01 << Local2)
                                Local0 [Local1] = (DerefOf (Local0 [Local1]) | Local2)
                                Divide (0x14, 0x08, Local2, Local1)
                                Local2 = (0x01 << Local2)
                                Local0 [Local1] = (DerefOf (Local0 [Local1]) | Local2)
                                Return (Local0)
                            }
                            ElseIf ((_T_0 == 0x14))
                            {
                                Local0 = Package (0x07)
                                    {
                                        0x0110, 
                                        0x0200, 
                                        0x00, 
                                        0x00, 
                                        0x05, 
                                        0x01, 
                                        Package (0x04)
                                        {
                                            0xDC, 
                                            0x00, 
                                            0x03E8, 
                                            Package (0x03)
                                            {
                                                0x65, 
                                                Package (0x65)
                                                {
                                                    0x00, 
                                                    0x0A, 
                                                    0x14, 
                                                    0x1E, 
                                                    0x28, 
                                                    0x32, 
                                                    0x3C, 
                                                    0x46, 
                                                    0x50, 
                                                    0x5A, 
                                                    0x64, 
                                                    0x6E, 
                                                    0x78, 
                                                    0x82, 
                                                    0x8C, 
                                                    0x96, 
                                                    0xA0, 
                                                    0xAA, 
                                                    0xB4, 
                                                    0xBE, 
                                                    0xC8, 
                                                    0xD2, 
                                                    0xDC, 
                                                    0xE6, 
                                                    0xF0, 
                                                    0xFA, 
                                                    0x0104, 
                                                    0x010E, 
                                                    0x0118, 
                                                    0x0122, 
                                                    0x012C, 
                                                    0x0136, 
                                                    0x0140, 
                                                    0x014A, 
                                                    0x0154, 
                                                    0x015E, 
                                                    0x0168, 
                                                    0x0172, 
                                                    0x017C, 
                                                    0x0186, 
                                                    0x0190, 
                                                    0x019A, 
                                                    0x01A4, 
                                                    0x01AE, 
                                                    0x01B8, 
                                                    0x01C2, 
                                                    0x01CC, 
                                                    0x01D6, 
                                                    0x01E0, 
                                                    0x01EA, 
                                                    0x01F4, 
                                                    0x01FE, 
                                                    0x0208, 
                                                    0x0212, 
                                                    0x021C, 
                                                    0x0226, 
                                                    0x0230, 
                                                    0x023A, 
                                                    0x0244, 
                                                    0x024E, 
                                                    0x0258, 
                                                    0x0262, 
                                                    0x026C, 
                                                    0x0276, 
                                                    0x0280, 
                                                    0x028A, 
                                                    0x0294, 
                                                    0x029E, 
                                                    0x02A8, 
                                                    0x02B2, 
                                                    0x02BC, 
                                                    0x02C6, 
                                                    0x02D0, 
                                                    0x02DA, 
                                                    0x02E4, 
                                                    0x02EE, 
                                                    0x02F8, 
                                                    0x0302, 
                                                    0x030C, 
                                                    0x0316, 
                                                    0x0320, 
                                                    0x032A, 
                                                    0x0334, 
                                                    0x033E, 
                                                    0x0348, 
                                                    0x0352, 
                                                    0x035C, 
                                                    0x0366, 
                                                    0x0370, 
                                                    0x037A, 
                                                    0x0384, 
                                                    0x038E, 
                                                    0x0398, 
                                                    0x03A2, 
                                                    0x03AC, 
                                                    0x03B6, 
                                                    0x03C0, 
                                                    0x03CA, 
                                                    0x03D4, 
                                                    0x03DE, 
                                                    0x03E8
                                                }, 

                                                Package (0x65)
                                                {
                                                    0x00, 
                                                    0x0A, 
                                                    0x14, 
                                                    0x1E, 
                                                    0x28, 
                                                    0x32, 
                                                    0x3C, 
                                                    0x46, 
                                                    0x50, 
                                                    0x5A, 
                                                    0x64, 
                                                    0x6E, 
                                                    0x78, 
                                                    0x82, 
                                                    0x8C, 
                                                    0x96, 
                                                    0xA0, 
                                                    0xAA, 
                                                    0xB4, 
                                                    0xBE, 
                                                    0xC8, 
                                                    0xD2, 
                                                    0xDC, 
                                                    0xE6, 
                                                    0xF0, 
                                                    0xFA, 
                                                    0x0104, 
                                                    0x010E, 
                                                    0x0118, 
                                                    0x0122, 
                                                    0x012C, 
                                                    0x0136, 
                                                    0x0140, 
                                                    0x014A, 
                                                    0x0154, 
                                                    0x015E, 
                                                    0x0168, 
                                                    0x0172, 
                                                    0x017C, 
                                                    0x0186, 
                                                    0x0190, 
                                                    0x019A, 
                                                    0x01A4, 
                                                    0x01AE, 
                                                    0x01B8, 
                                                    0x01C2, 
                                                    0x01CC, 
                                                    0x01D6, 
                                                    0x01E0, 
                                                    0x01EA, 
                                                    0x01F4, 
                                                    0x01FE, 
                                                    0x0208, 
                                                    0x0212, 
                                                    0x021C, 
                                                    0x0226, 
                                                    0x0230, 
                                                    0x023A, 
                                                    0x0244, 
                                                    0x024E, 
                                                    0x0258, 
                                                    0x0262, 
                                                    0x026C, 
                                                    0x0276, 
                                                    0x0280, 
                                                    0x028A, 
                                                    0x0294, 
                                                    0x029E, 
                                                    0x02A8, 
                                                    0x02B2, 
                                                    0x02BC, 
                                                    0x02C6, 
                                                    0x02D0, 
                                                    0x02DA, 
                                                    0x02E4, 
                                                    0x02EE, 
                                                    0x02F8, 
                                                    0x0302, 
                                                    0x030C, 
                                                    0x0316, 
                                                    0x0320, 
                                                    0x032A, 
                                                    0x0334, 
                                                    0x033E, 
                                                    0x0348, 
                                                    0x0352, 
                                                    0x035C, 
                                                    0x0366, 
                                                    0x0370, 
                                                    0x037A, 
                                                    0x0384, 
                                                    0x038E, 
                                                    0x0398, 
                                                    0x03A2, 
                                                    0x03AC, 
                                                    0x03B6, 
                                                    0x03C0, 
                                                    0x03CA, 
                                                    0x03D4, 
                                                    0x03DE, 
                                                    0x03E8
                                                }
                                            }
                                        }
                                    }
                                Local1 = 0x00
                                While ((Local1 <= 0x64))
                                {
                                    Local2 = DerefOf (DerefOf (\_SB.PCI0.LPC.EC.BRTD [\BRTN]) [Local1])
                                    Local2 *= 0x03E8
                                    Divide (Local2, 0xFF, Local2, Local3)
                                    DerefOf (DerefOf (DerefOf (Local0 [0x06]) [0x03]) [0x01]) [Local1] = Local3
                                    Local1++
                                }

                                Return (Local0)
                            }

                            Break
                        }

                        Return (0x80000002)
                    }

                    Method (NVSB, 1, NotSerialized)
                    {
                        Name (CNT, 0x00)
                        If ((PBCC == 0x01))
                        {
                            If ((PBMR == 0x00))
                            {
                                PBMR = 0x02
                                If ((PBMR == 0x02))
                                {
                                    While (((PBCC && 0xFF) && (CNT < 0x0A)))
                                    {
                                        CNT++
                                        Sleep (0x01)
                                    }

                                    If (((PBCR & 0x02) == 0x00))
                                    {
                                        Local0 = (Arg0 * 0x03E8)
                                        Divide (Local0, 0xFF, Local1, Local2)
                                        Local2 <<= 0x08
                                        PBDI = Local2
                                        PBCR = 0x86100000
                                    }

                                    PBMR = 0x00
                                    Return (0x01)
                                }
                            }
                        }

                        Return (0x00)
                    }
                }

                OperationRegion (PEGC, PCI_Config, 0x00, 0x0100)
                Field (PEGC, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xB0), 
                        ,   5, 
                    RTLK,   1, 
                    Offset (0xEC), 
                    GMGP,   1, 
                    HPGP,   1, 
                    PMGP,   1
                }
            }

            Device (HDAU)
            {
                Name (_ADR, 0x00030000)  // _ADR: Address
                Method (_DSM, 4, NotSerialized)
                {
                    If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
                    Return (Package()
                    {
                        "layout-id", Buffer() { 12, 0x00, 0x00, 0x00 },
                        "hda-gfx", Buffer() { "onboard-1" },
                    })
                }
            }

            Device (IGBE)
            {
                Name (_ADR, 0x00190000)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, 0x00)
                Name(_PRW, Package() { 0x0D, 0 })
                
            }

            Name (LTRE, 0x00)
            Name (OBFF, 0x00)
            Device (EXP1)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    Return (RPA0)
                }

                Name (RID, 0x00)
                OperationRegion (PECS, PCI_Config, 0x00, 0x0100)
                Field (PECS, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x62), 
                    PS,     1, 
                    PP,     1, 
                    Offset (0xDB), 
                        ,   7, 
                    PMCE,   1, 
                    Offset (0xDF), 
                        ,   7, 
                    PMCS,   1
                }

                Name (LPRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        \_SB.LNKA, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        \_SB.LNKB, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        \_SB.LNKC, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        \_SB.LNKD, 
                        0x00
                    }
                })
                Name (APRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        0x00, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        0x00, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        0x00, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        0x00, 
                        0x13
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (\GPIC)
                    {
                        Return (APRT)
                    }
                    Else
                    {
                        Return (LPRT)
                    }
                }

                Name (OPTS, 0x00)
                Name (LTRV, Package (0x04)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    While (One)
                    {
                        _T_0 = ToInteger (Arg0)
                        If ((_T_0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                        {
                            While (One)
                            {
                                _T_1 = ToInteger (Arg2)
                                If ((_T_1 == 0x00))
                                {
                                    If ((Arg1 == 0x02))
                                    {
                                        OPTS = 0x01
                                        If (LTRE)
                                        {
                                            OPTS |= 0x40
                                        }

                                        If (OBFF)
                                        {
                                            OPTS |= 0x10
                                        }

                                        Return (OPTS)
                                    }
                                    Else
                                    {
                                        Return (0x00)
                                    }
                                }
                                ElseIf ((_T_1 == 0x04))
                                {
                                    If ((Arg1 == 0x02))
                                    {
                                        If (OBFF)
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                            })
                                        }
                                    }
                                }
                                ElseIf ((_T_1 == 0x06))
                                {
                                    If ((Arg1 == 0x02))
                                    {
                                        If (LTRE)
                                        {
                                            Name (MLTR, 0x00)
                                            MLTR = 0x0846
                                            LTRV [0x00] = ((MLTR >> 0x0A) & 0x07)
                                            LTRV [0x01] = (MLTR & 0x03FF)
                                            LTRV [0x02] = ((MLTR >> 0x0A) & 0x07)
                                            LTRV [0x03] = (MLTR & 0x03FF)
                                            Return (LTRV)
                                        }
                                        Else
                                        {
                                            Return (0x00)
                                        }
                                    }
                                }

                                Break
                            }
                        }

                        Break
                    }

                    Return (Buffer (0x01)
                    {
                         0x00                                           
                    })
                }
            }

            Device (EXP3)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    Return (RPA2)
                }

                Name (RID, 0x00)
                OperationRegion (PECS, PCI_Config, 0x00, 0x0100)
                Field (PECS, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x5A), 
                        ,   3, 
                    PDC,    1, 
                        ,   2, 
                    PDS,    1, 
                    Offset (0x5B), 
                    Offset (0x62), 
                    PS,     1, 
                    PP,     1, 
                    Offset (0xDB), 
                        ,   6, 
                    HPCE,   1, 
                    PMCE,   1, 
                    Offset (0xDF), 
                        ,   6, 
                    HPCS,   1, 
                    PMCS,   1
                }

                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    PDSF = PDS
                    LTRE = LTR3
                    OBFF = OBF3
                }

                Name (LPRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        \_SB.LNKC, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        \_SB.LNKD, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        \_SB.LNKA, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        \_SB.LNKB, 
                        0x00
                    }
                })
                Name (APRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        0x00, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        0x00, 
                        0x13
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        0x00, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        0x00, 
                        0x11
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (\GPIC)
                    {
                        Return (APRT)
                    }
                    Else
                    {
                        Return (LPRT)
                    }
                }

                Name (OPTS, 0x00)
                Name (LTRV, Package (0x04)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    While (One)
                    {
                        _T_0 = ToInteger (Arg0)
                        If ((_T_0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                        {
                            While (One)
                            {
                                _T_1 = ToInteger (Arg2)
                                If ((_T_1 == 0x00))
                                {
                                    If ((Arg1 == 0x02))
                                    {
                                        OPTS = 0x01
                                        If (LTRE)
                                        {
                                            OPTS |= 0x40
                                        }

                                        If (OBFF)
                                        {
                                            OPTS |= 0x10
                                        }

                                        Return (OPTS)
                                    }
                                    Else
                                    {
                                        Return (0x00)
                                    }
                                }
                                ElseIf ((_T_1 == 0x04))
                                {
                                    If ((Arg1 == 0x02))
                                    {
                                        If (OBFF)
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                            })
                                        }
                                    }
                                }
                                ElseIf ((_T_1 == 0x06))
                                {
                                    If ((Arg1 == 0x02))
                                    {
                                        If (LTRE)
                                        {
                                            Name (MLTR, 0x00)
                                            MLTR = 0x0846
                                            LTRV [0x00] = ((MLTR >> 0x0A) & 0x07)
                                            LTRV [0x01] = (MLTR & 0x03FF)
                                            LTRV [0x02] = ((MLTR >> 0x0A) & 0x07)
                                            LTRV [0x03] = (MLTR & 0x03FF)
                                            Return (LTRV)
                                        }
                                        Else
                                        {
                                            Return (0x00)
                                        }
                                    }
                                }

                                Break
                            }
                        }

                        Break
                    }

                    Return (Buffer (0x01)
                    {
                         0x00                                           
                    })
                }

                Name (PDSF, 0x00)
                Device (SLOT)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (0x01)
                    }
                }
            }

            Device (EXP4)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    Return (RPA3)
                }

                Name (RID, 0x00)
                OperationRegion (PECS, PCI_Config, 0x00, 0x0100)
                Field (PECS, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x62), 
                    PS,     1, 
                    PP,     1, 
                    Offset (0xDB), 
                        ,   7, 
                    PMCE,   1, 
                    Offset (0xDF), 
                        ,   7, 
                    PMCS,   1
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        \_SB.PCI0.LPC.EC.HWPM = 0x01
                        \_SB.PCI0.LPC.EC.HWLU = 0x01
                    }
                    Else
                    {
                        \_SB.PCI0.LPC.EC.HWPM = 0x00
                        \_SB.PCI0.LPC.EC.HWLU = 0x00
                    }
                }

                Name (LPRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        \_SB.LNKD, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        \_SB.LNKA, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        \_SB.LNKB, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        \_SB.LNKC, 
                        0x00
                    }
                })
                Name (APRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        0x00, 
                        0x13
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        0x00, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        0x00, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        0x00, 
                        0x12
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (\GPIC)
                    {
                        Return (APRT)
                    }
                    Else
                    {
                        Return (LPRT)
                    }
                }

                Name (OPTS, 0x00)
                Name (LTRV, Package (0x04)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    While (One)
                    {
                        _T_0 = ToInteger (Arg0)
                        If ((_T_0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                        {
                            While (One)
                            {
                                _T_1 = ToInteger (Arg2)
                                If ((_T_1 == 0x00))
                                {
                                    If ((Arg1 == 0x02))
                                    {
                                        OPTS = 0x01
                                        If (LTRE)
                                        {
                                            OPTS |= 0x40
                                        }

                                        If (OBFF)
                                        {
                                            OPTS |= 0x10
                                        }

                                        Return (OPTS)
                                    }
                                    Else
                                    {
                                        Return (0x00)
                                    }
                                }
                                ElseIf ((_T_1 == 0x04))
                                {
                                    If ((Arg1 == 0x02))
                                    {
                                        If (OBFF)
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                            })
                                        }
                                    }
                                }
                                ElseIf ((_T_1 == 0x06))
                                {
                                    If ((Arg1 == 0x02))
                                    {
                                        If (LTRE)
                                        {
                                            Name (MLTR, 0x00)
                                            MLTR = 0x0846
                                            LTRV [0x00] = ((MLTR >> 0x0A) & 0x07)
                                            LTRV [0x01] = (MLTR & 0x03FF)
                                            LTRV [0x02] = ((MLTR >> 0x0A) & 0x07)
                                            LTRV [0x03] = (MLTR & 0x03FF)
                                            Return (LTRV)
                                        }
                                        Else
                                        {
                                            Return (0x00)
                                        }
                                    }
                                }

                                Break
                            }
                        }

                        Break
                    }

                    Return (Buffer (0x01)
                    {
                         0x00                                           
                    })
                }
            }

            Device (EXP5)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    Return (RPA4)
                }

                Name (RID, 0x00)
                OperationRegion (PECS, PCI_Config, 0x00, 0x0100)
                Field (PECS, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x62), 
                    PS,     1, 
                    PP,     1, 
                    Offset (0xDB), 
                        ,   7, 
                    PMCE,   1, 
                    Offset (0xDF), 
                        ,   7, 
                    PMCS,   1
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        \_SB.PCI0.LPC.EC.HWPM = 0x01
                    }
                }

                Name (LPRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        \_SB.LNKA, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        \_SB.LNKB, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        \_SB.LNKC, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        \_SB.LNKD, 
                        0x00
                    }
                })
                Name (APRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        0x00, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        0x00, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        0x00, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        0x00, 
                        0x13
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (\GPIC)
                    {
                        Return (APRT)
                    }
                    Else
                    {
                        Return (LPRT)
                    }
                }

                Name (OPTS, 0x00)
                Name (LTRV, Package (0x04)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    While (One)
                    {
                        _T_0 = ToInteger (Arg0)
                        If ((_T_0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                        {
                            While (One)
                            {
                                _T_1 = ToInteger (Arg2)
                                If ((_T_1 == 0x00))
                                {
                                    If ((Arg1 == 0x02))
                                    {
                                        OPTS = 0x01
                                        If (LTRE)
                                        {
                                            OPTS |= 0x40
                                        }

                                        If (OBFF)
                                        {
                                            OPTS |= 0x10
                                        }

                                        Return (OPTS)
                                    }
                                    Else
                                    {
                                        Return (0x00)
                                    }
                                }
                                ElseIf ((_T_1 == 0x04))
                                {
                                    If ((Arg1 == 0x02))
                                    {
                                        If (OBFF)
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (0x10)
                                            {
                                                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                            })
                                        }
                                    }
                                }
                                ElseIf ((_T_1 == 0x06))
                                {
                                    If ((Arg1 == 0x02))
                                    {
                                        If (LTRE)
                                        {
                                            Name (MLTR, 0x00)
                                            MLTR = 0x0846
                                            LTRV [0x00] = ((MLTR >> 0x0A) & 0x07)
                                            LTRV [0x01] = (MLTR & 0x03FF)
                                            LTRV [0x02] = ((MLTR >> 0x0A) & 0x07)
                                            LTRV [0x03] = (MLTR & 0x03FF)
                                            Return (LTRV)
                                        }
                                        Else
                                        {
                                            Return (0x00)
                                        }
                                    }
                                }

                                Break
                            }
                        }

                        Break
                    }

                    Return (Buffer (0x01)
                    {
                         0x00                                           
                    })
                }
            }

            Device (SAT1)
            {
                Name (_ADR, 0x001F0002)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, 0x00)
            }

            Device (SAT2)
            {
                Name (_ADR, 0x001F0005)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, 0x00)
            }

            Device (SMBU)
            {
                Name (_ADR, 0x001F0003)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, 0x00)
                Device (NFC)
                {
                    Name (_HID, EisaId ("BCM2F09"))  // _HID: Hardware ID
                    Name (_CID, EisaId ("BCM2F09"))  // _CID: Compatible ID
                    Name (_UID, 0x00)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x00)
                    }

                    Method (GPEN, 0, NotSerialized)
                    {
                        \_GPE.GPFG = 0x01
                    }

                    Method (SNFC, 1, NotSerialized)
                    {
                        If (Arg0)
                        {
                            \_SB.PCI0.LPC.NFCP = 0x01
                        }
                        Else
                        {
                            \_SB.PCI0.LPC.NFCP = 0x00
                        }
                    }
                }
            }

            Device (XHC)
            {
                Name (_ADR, 0x00140000)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, 0x00)
                OperationRegion (XHCS, PCI_Config, 0x00, 0x0100)
                Field (XHCS, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    MEMB,   32, 
                    Offset (0xD0), 
                    PR2,    32, 
                    PR2M,   32, 
                    PR3,    32, 
                    PR3M,   32
                }

                Name (XRST, Zero)
                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    \_SB.PCI0.LPC.EC.PUBS
                })
                Name (_PR1, Package (0x01)  // _PR1: Power Resources for D1
                {
                    \_SB.PCI0.LPC.EC.PUBS
                })
                Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
                {
                    \_SB.PCI0.LPC.EC.PUBS
                })
                
                Method (CUID, 1, Serialized)
                {
                    If ((Arg0 == ToUUID ("7c9512a9-1705-4cb4-af7d-506a2423ab71")))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (POSC, 3, Serialized)
                {
                    CreateDWordField (Arg2, 0x00, CDW1)
                    CreateDWordField (Arg2, 0x08, CDW3)
                    If ((\XHC == 0x00))
                    {
                        CDW1 |= 0x02
                        \_SB.PCI0.LPC.XUSB = 0x00
                        XRST = 0x00
                    }

                    If (!(CDW1 & 0x01))
                    {
                        If ((CDW3 & 0x01))
                        {
                            ESEL ()
                        }
                        ElseIf (0x01)
                        {
                            If ((Arg0 > 0x01))
                            {
                                SXHC ()
                            }
                            Else
                            {
                                CDW1 |= 0x0A
                            }
                        }
                        ElseIf ((Arg0 > 0x02))
                        {
                            SXHC ()
                        }
                        Else
                        {
                            CDW1 |= 0x0A
                        }

                        Return (Arg2)
                    }

                    If ((!(CDW1 & 0x01) && ((\XHC == 0x02) || (\XHC == 0x03))))
                    {
                        SXHC ()
                    }

                    Return (Arg2)
                }

                Method (ESEL, 0, Serialized)
                {
                    If (((\XHC == 0x02) || (\XHC == 0x03)))
                    {
                        PR3 &= 0xFFFFFFC0
                        PR2 &= 0xFFFF8000
                        \_SB.PCI0.LPC.XUSB = 0x00
                        XRST = 0x00
                    }
                }

                Method (SXHC, 0, NotSerialized)
                {
                    \_SB.PCI0.LPC.XUSB = 0x01
                    XRST = 0x01
                    Local0 = 0x00
                    Local0 = (PR3 & 0xFFFFFFC0)
                    PR3 = (Local0 | PR3M)
                    Local0 = 0x00
                    Local0 = (PR2 & 0xFFFF8000)
                    PR2 = (Local0 | PR2M)
                    If (((\WIN8 == 0x00) && \WIN7))
                    {
                        PR2 &= 0xFFFFFFEF
                    }

                    If ((\WIN8 == 0x01))
                    {
                        PR2 &= 0xFFFFFFEF
                    }

                    \_SB.PCI0.LPC.XUSB = 0x01
                    \USBR = 0x01
                }

                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    If (\WIN8)
                    {
                        SXHC ()
                    }
                }

                Device (URTH)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    Device (HSP0)
                    {
                        Name (_ADR, 0x01)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            CopyObject (\UPC0, UPCP)
                            If (!(PR2 & 0x01))
                            {
                                UPCP [0x00] = 0x00
                            }

                            Return (UPCP)
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            PLDP = \PLD0
                            CreateBitField (PLDP, 0x40, VIS)
                            If (!(PR2 & 0x01))
                            {
                                VIS &= 0x00
                            }

                            Return (PLDP)
                        }
                    }

                    Device (HSP1)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            CopyObject (\UPC1, UPCP)
                            If (!(PR2 & 0x02))
                            {
                                UPCP [0x00] = 0x00
                            }

                            Return (UPCP)
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            PLDP = \PLD1
                            CreateBitField (PLDP, 0x40, VIS)
                            If (!(PR2 & 0x02))
                            {
                                VIS &= 0x00
                            }

                            Return (PLDP)
                        }
                    }

                    Device (HSP2)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            CopyObject (\UPCN, UPCP)
                            If (!(PR2 & 0x04))
                            {
                                UPCP [0x00] = 0x00
                            }

                            Return (UPCP)
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            PLDP = \PLDN
                            CreateBitField (PLDP, 0x40, VIS)
                            If (!(PR2 & 0x04))
                            {
                                VIS &= 0x00
                            }

                            Return (PLDP)
                        }
                    }

                    Device (HSP3)
                    {
                        Name (_ADR, 0x04)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            CopyObject (\UPC4, UPCP)
                            If (!(PR2 & 0x08))
                            {
                                UPCP [0x00] = 0x00
                            }

                            Return (UPCP)
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            PLDP = \PLD4
                            CreateBitField (PLDP, 0x40, VIS)
                            If (!(PR2 & 0x08))
                            {
                                VIS &= 0x00
                            }

                            Return (PLDP)
                        }
                    }

                    Device (HSP4)
                    {
                        Name (_ADR, 0x05)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            CopyObject (\UPCN, UPCP)
                            If (!(PR2 & 0x10))
                            {
                                UPCP [0x00] = 0x00
                            }

                            Return (UPCP)
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            PLDP = \PLDN
                            CreateBitField (PLDP, 0x40, VIS)
                            If (!(PR2 & 0x10))
                            {
                                VIS &= 0x00
                            }

                            Return (PLDP)
                        }
                    }

                    Device (HSP5)
                    {
                        Name (_ADR, 0x06)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            CopyObject (\UPC2, UPCP)
                            If (!(PR2 & 0x20))
                            {
                                UPCP [0x00] = 0x00
                            }

                            Return (UPCP)
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            PLDP = \PLD2
                            CreateBitField (PLDP, 0x40, VIS)
                            If (!(PR2 & 0x20))
                            {
                                VIS &= 0x00
                            }

                            Return (PLDP)
                        }
                    }

                    Device (HSP6)
                    {
                        Name (_ADR, 0x07)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            CopyObject (\UPCI, UPCP)
                            If (!(PR2 & 0x40))
                            {
                                UPCP [0x00] = 0x00
                            }

                            Return (UPCP)
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            PLDP = \PLDI
                            CreateBitField (PLDP, 0x40, VIS)
                            If (!(PR2 & 0x40))
                            {
                                VIS &= 0x00
                            }

                            Return (PLDP)
                        }
                    }

                    Device (HSP7)
                    {
                        Name (_ADR, 0x08)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            CopyObject (\UPC5, UPCP)
                            If (!(PR2 & 0x80))
                            {
                                UPCP [0x00] = 0x00
                            }

                            Return (UPCP)
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            PLDP = \PLD5
                            CreateBitField (PLDP, 0x40, VIS)
                            If (!(PR2 & 0x80))
                            {
                                VIS &= 0x00
                            }

                            Return (PLDP)
                        }
                    }

                    Device (HSP8)
                    {
                        Name (_ADR, 0x09)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            CopyObject (\UPCI, UPCP)
                            If (!(PR2 & 0x0100))
                            {
                                UPCP [0x00] = 0x00
                            }

                            Return (UPCP)
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            PLDP = \PLDI
                            CreateBitField (PLDP, 0x40, VIS)
                            If (!(PR2 & 0x0100))
                            {
                                VIS &= 0x00
                            }

                            Return (PLDP)
                        }
                    }

                    Device (HSP9)
                    {
                        Name (_ADR, 0x0A)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            CopyObject (\UPCN, UPCP)
                            If (!(PR2 & 0x0200))
                            {
                                UPCP [0x00] = 0x00
                            }

                            Return (UPCP)
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            PLDP = \PLDN
                            CreateBitField (PLDP, 0x40, VIS)
                            If (!(PR2 & 0x0200))
                            {
                                VIS &= 0x00
                            }

                            Return (PLDP)
                        }
                    }

                    Device (HSPA)
                    {
                        Name (_ADR, 0x0B)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            CopyObject (\UPCI, UPCP)
                            If (!(PR2 & 0x0400))
                            {
                                UPCP [0x00] = 0x00
                            }

                            Return (UPCP)
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            PLDP = \PLDI
                            CreateBitField (PLDP, 0x40, VIS)
                            If (!(PR2 & 0x0400))
                            {
                                VIS &= 0x00
                            }

                            Return (PLDP)
                        }
                    }

                    Device (HSPB)
                    {
                        Name (_ADR, 0x0C)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            CopyObject (\UPCI, UPCP)
                            If (!(PR2 & 0x0800))
                            {
                                UPCP [0x00] = 0x00
                            }

                            Return (UPCP)
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            PLDP = \PLDI
                            CreateBitField (PLDP, 0x40, VIS)
                            If (!(PR2 & 0x0800))
                            {
                                VIS &= 0x00
                            }

                            Return (PLDP)
                        }

                        Device (WCAM)
                        {
                            Name (_ADR, 0x0C)  // _ADR: Address
                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                If (\WIN8)
                                {
                                    Return (0x0F)
                                }
                                Else
                                {
                                    Return (0x00)
                                }
                            }

                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Return (\UPCI)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Return (\PLDC)
                            }
                        }
                    }

                    Device (HSPC)
                    {
                        Name (_ADR, 0x0D)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            CopyObject (\UPCN, UPCP)
                            If (!(PR2 & 0x1000))
                            {
                                UPCP [0x00] = 0x00
                            }

                            Return (UPCP)
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            PLDP = \PLDN
                            CreateBitField (PLDP, 0x40, VIS)
                            If (!(PR2 & 0x1000))
                            {
                                VIS &= 0x00
                            }

                            Return (PLDP)
                        }
                    }

                    Device (HSPD)
                    {
                        Name (_ADR, 0x0E)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            CopyObject (\UPCN, UPCP)
                            If (!(PR2 & 0x2000))
                            {
                                UPCP [0x00] = 0x00
                            }

                            Return (UPCP)
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            PLDP = \PLDN
                            CreateBitField (PLDP, 0x40, VIS)
                            If (!(PR2 & 0x2000))
                            {
                                VIS &= 0x00
                            }

                            Return (PLDP)
                        }
                    }

                    Device (HSPE)
                    {
                        Name (_ADR, 0x0F)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            CopyObject (\UPCN, UPCP)
                            If (!(PR2 & 0x4000))
                            {
                                UPCP [0x00] = 0x00
                            }

                            Return (UPCP)
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            PLDP = \PLDN
                            CreateBitField (PLDP, 0x40, VIS)
                            If (!(PR2 & 0x2000))
                            {
                                VIS &= 0x00
                            }

                            Return (PLDP)
                        }
                    }

                    Device (SSP0)
                    {
                        Name (_ADR, 0x10)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            CopyObject (\UPC4, UPCP)
                            If ((!(PR2 & 0x01) || !(PR3 & 0x01)))
                            {
                                UPCP [0x00] = 0x00
                            }

                            Return (UPCP)
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            PLDP = \PLD4
                            CreateBitField (PLDP, 0x40, VIS)
                            If ((!(PR2 & 0x01) || !(PR3 & 0x01)))
                            {
                                VIS &= 0x00
                            }

                            Return (PLDP)
                        }
                    }

                    Device (SSP1)
                    {
                        Name (_ADR, 0x11)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            CopyObject (\UPC0, UPCP)
                            If ((!(PR2 & 0x02) || !(PR3 & 0x02)))
                            {
                                UPCP [0x00] = 0x00
                            }

                            Return (UPCP)
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            PLDP = \PLD0
                            CreateBitField (PLDP, 0x40, VIS)
                            If ((!(PR2 & 0x02) || !(PR3 & 0x02)))
                            {
                                VIS &= 0x00
                            }

                            Return (PLDP)
                        }
                    }

                    Device (SSP2)
                    {
                        Name (_ADR, 0x12)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            CopyObject (\UPCN, UPCP)
                            If ((!(PR2 & 0x04) || !(PR3 & 0x04)))
                            {
                                UPCP [0x00] = 0x00
                            }

                            Return (UPCP)
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            PLDP = \PLDN
                            CreateBitField (PLDP, 0x40, VIS)
                            If ((!(PR2 & 0x04) || !(PR3 & 0x04)))
                            {
                                VIS &= 0x00
                            }

                            Return (PLDP)
                        }
                    }

                    Device (SSP3)
                    {
                        Name (_ADR, 0x13)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            CopyObject (\UPCN, UPCP)
                            If ((!(PR2 & 0x08) || !(PR3 & 0x08)))
                            {
                                UPCP [0x00] = 0x00
                            }

                            Return (UPCP)
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            PLDP = \PLDN
                            CreateBitField (PLDP, 0x40, VIS)
                            If ((!(PR2 & 0x08) || !(PR3 & 0x08)))
                            {
                                VIS &= 0x00
                            }

                            Return (PLDP)
                        }
                    }

                    Device (SSP4)
                    {
                        Name (_ADR, 0x14)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            CopyObject (\UPC1, UPCP)
                            Return (UPCP)
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            PLDP = \PLD1
                            CreateBitField (PLDP, 0x40, VIS)
                            Return (PLDP)
                        }
                    }

                    Device (SSP5)
                    {
                        Name (_ADR, 0x15)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            CopyObject (\UPCN, UPCP)
                            If ((!(PR2 & 0x20) || !(PR3 & 0x20)))
                            {
                                UPCP [0x00] = 0x00
                            }

                            Return (UPCP)
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            PLDP = \PLDN
                            CreateBitField (PLDP, 0x40, VIS)
                            If ((!(PR2 & 0x20) || !(PR3 & 0x20)))
                            {
                                VIS &= 0x00
                            }

                            Return (PLDP)
                        }
                    }
                }
                Name(_PRW, Package() { 0x0D, 0 })
                Method (_DSM, 4, NotSerialized)
                {
                    If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
                    Return (Package()
                    {
                        "subsystem-id", Buffer() { 0x70, 0x72, 0x00, 0x00 },
                        "subsystem-vendor-id", Buffer() { 0x86, 0x80, 0x00, 0x00 },
                        "AAPL,current-available", 2100,
                        "AAPL,current-extra", 2200,
                        "AAPL,current-extra-in-sleep", 1600,
                        "AAPL,device-internal", 0x02,
                        "AAPL,max-port-current-in-sleep", 2100,
                    })
                }
            }

            Device (EHC1)
            {
                Name (_ADR, 0x001D0000)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, 0x00)
                OperationRegion (EHCS, PCI_Config, 0x00, 0x0100)
                Field (EHCS, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x62), 
                    PWKI,   1, 
                    PWUC,   8, 
                    Offset (0x64)
                }

                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    \_SB.PCI0.LPC.EC.PUBS
                })
                Name (_PR1, Package (0x01)  // _PR1: Power Resources for D1
                {
                    \_SB.PCI0.LPC.EC.PUBS
                })
                Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
                {
                    \_SB.PCI0.LPC.EC.PUBS
                })
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    PWKI = 0x01
                    PWUC = 0x23
                }

                
                Device (URTH)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    Device (URMH)
                    {
                        Name (_ADR, 0x01)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Return (\UPCI)
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Return (\PLDI)
                        }

                        Device (PRT0)
                        {
                            Name (_ADR, 0x01)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    0x00, 
                                    0x00, 
                                    0x00, 
                                    0x00
                                })
                                CopyObject (\UPC0, UPCP)
                                If ((\XHC == 0x00)) {}
                                ElseIf ((\_SB.PCI0.XHC.PR2 & 0x01))
                                {
                                    UPCP [0x00] = 0x00
                                }

                                Return (UPCP)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Buffer (0x10) {})
                                PLDP = \PLD0
                                CreateBitField (PLDP, 0x40, VIS)
                                If ((\XHC == 0x00)) {}
                                Else
                                {
                                    If ((\_SB.PCI0.XHC.PR2 & 0x01))
                                    {
                                        VIS &= 0x00
                                    }

                                    Return (PLDP)
                                }
                            }
                        }

                        Device (PRT1)
                        {
                            Name (_ADR, 0x02)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    0x00, 
                                    0x00, 
                                    0x00, 
                                    0x00
                                })
                                CopyObject (\UPC1, UPCP)
                                If ((\XHC == 0x00)) {}
                                ElseIf ((\_SB.PCI0.XHC.PR2 & 0x02))
                                {
                                    UPCP [0x00] = 0x00
                                }

                                Return (UPCP)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Buffer (0x10) {})
                                PLDP = \PLD1
                                CreateBitField (PLDP, 0x40, VIS)
                                If ((\XHC == 0x00)) {}
                                ElseIf ((\_SB.PCI0.XHC.PR2 & 0x02))
                                {
                                    VIS &= 0x00
                                }

                                Return (PLDP)
                            }
                        }

                        Device (PRT2)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    0x00, 
                                    0x00, 
                                    0x00, 
                                    0x00
                                })
                                CopyObject (\UPCN, UPCP)
                                If ((\XHC == 0x00)) {}
                                ElseIf ((\_SB.PCI0.XHC.PR2 & 0x04))
                                {
                                    UPCP [0x00] = 0x00
                                }

                                Return (UPCP)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Buffer (0x10) {})
                                PLDP = \PLDN
                                CreateBitField (PLDP, 0x40, VIS)
                                If ((\XHC == 0x00)) {}
                                ElseIf ((\_SB.PCI0.XHC.PR2 & 0x04))
                                {
                                    VIS &= 0x00
                                }

                                Return (PLDP)
                            }
                        }

                        Device (PRT3)
                        {
                            Name (_ADR, 0x04)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    0x00, 
                                    0x00, 
                                    0x00, 
                                    0x00
                                })
                                CopyObject (\UPC4, UPCP)
                                If ((\XHC == 0x00)) {}
                                ElseIf ((\_SB.PCI0.XHC.PR2 & 0x08))
                                {
                                    UPCP [0x00] = 0x00
                                }

                                Return (UPCP)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Buffer (0x10) {})
                                PLDP = \PLD4
                                CreateBitField (PLDP, 0x40, VIS)
                                If ((\XHC == 0x00)) {}
                                ElseIf ((\_SB.PCI0.XHC.PR2 & 0x08))
                                {
                                    VIS &= 0x00
                                }

                                Return (PLDP)
                            }
                        }

                        Device (PRT4)
                        {
                            Name (_ADR, 0x05)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    0x00, 
                                    0x00, 
                                    0x00, 
                                    0x00
                                })
                                CopyObject (\UPCI, UPCP)
                                If ((\XHC == 0x00)) {}
                                ElseIf ((\_SB.PCI0.XHC.PR2 & 0x10))
                                {
                                    UPCP [0x00] = 0x00
                                }

                                Return (UPCP)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Buffer (0x10) {})
                                PLDP = \PLDI
                                CreateBitField (PLDP, 0x40, VIS)
                                If ((\XHC == 0x00)) {}
                                ElseIf ((\_SB.PCI0.XHC.PR2 & 0x10))
                                {
                                    VIS &= 0x00
                                }

                                Return (PLDP)
                            }
                        }

                        Device (PRT5)
                        {
                            Name (_ADR, 0x06)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    0x00, 
                                    0x00, 
                                    0x00, 
                                    0x00
                                })
                                CopyObject (\UPCN, UPCP)
                                If ((\XHC == 0x00)) {}
                                ElseIf ((\_SB.PCI0.XHC.PR2 & 0x20))
                                {
                                    UPCP [0x00] = 0x00
                                }

                                Return (UPCP)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Buffer (0x10) {})
                                PLDP = \PLDN
                                CreateBitField (PLDP, 0x40, VIS)
                                If ((\XHC == 0x00)) {}
                                ElseIf ((\_SB.PCI0.XHC.PR2 & 0x20))
                                {
                                    VIS &= 0x00
                                }

                                Return (PLDP)
                            }
                        }

                        Device (PRT6)
                        {
                            Name (_ADR, 0x07)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    0x00, 
                                    0x00, 
                                    0x00, 
                                    0x00
                                })
                                CopyObject (\UPCN, UPCP)
                                If ((\XHC == 0x00)) {}
                                ElseIf ((\_SB.PCI0.XHC.PR2 & 0x40))
                                {
                                    UPCP [0x00] = 0x00
                                }

                                Return (UPCP)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Buffer (0x10) {})
                                PLDP = \PLDN
                                CreateBitField (PLDP, 0x40, VIS)
                                If ((\XHC == 0x00)) {}
                                ElseIf ((\_SB.PCI0.XHC.PR2 & 0x40))
                                {
                                    VIS &= 0x00
                                }

                                Return (PLDP)
                            }
                        }

                        Device (PRT7)
                        {
                            Name (_ADR, 0x08)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    0x00, 
                                    0x00, 
                                    0x00, 
                                    0x00
                                })
                                CopyObject (\UPCN, UPCP)
                                If ((\XHC == 0x00)) {}
                                ElseIf ((\_SB.PCI0.XHC.PR2 & 0x80))
                                {
                                    UPCP [0x00] = 0x00
                                }

                                Return (UPCP)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Buffer (0x10) {})
                                PLDP = \PLDN
                                CreateBitField (PLDP, 0x40, VIS)
                                If ((\XHC == 0x00)) {}
                                ElseIf ((\_SB.PCI0.XHC.PR2 & 0x80))
                                {
                                    VIS &= 0x00
                                }

                                Return (PLDP)
                            }
                        }
                    }
                }
                Name(_PRW, Package() { 0x0D, 0 })
                Method (_DSM, 4, NotSerialized)
                {
                    If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
                    Return (Package()
                    {
                        "subsystem-id", Buffer() { 0x70, 0x72, 0x00, 0x00 },
                        "subsystem-vendor-id", Buffer() { 0x86, 0x80, 0x00, 0x00 },
                        "AAPL,current-available", 2100,
                        "AAPL,current-extra", 2200,
                        "AAPL,current-extra-in-sleep", 1600,
                        "AAPL,device-internal", 0x02,
                        "AAPL,max-port-current-in-sleep", 2100,
                    })
                }
            }

            Device (EHC2)
            {
                Name (_ADR, 0x001A0000)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, 0x00)
                OperationRegion (EHCS, PCI_Config, 0x00, 0x0100)
                Field (EHCS, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x62), 
                    PWKI,   1, 
                    PWUC,   6, 
                    Offset (0x64)
                }

                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    \_SB.PCI0.LPC.EC.PUBS
                })
                Name (_PR1, Package (0x01)  // _PR1: Power Resources for D1
                {
                    \_SB.PCI0.LPC.EC.PUBS
                })
                Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
                {
                    \_SB.PCI0.LPC.EC.PUBS
                })
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    PWKI = 0x01
                    PWUC = 0x13
                }

                
                Device (URTH)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    Device (URMH)
                    {
                        Name (_ADR, 0x01)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Return (\UPCI)
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Return (\PLDI)
                        }

                        Device (PRT8)
                        {
                            Name (_ADR, 0x01)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    0x00, 
                                    0x00, 
                                    0x00, 
                                    0x00
                                })
                                CopyObject (\UPCN, UPCP)
                                If ((\XHC == 0x00)) {}
                                ElseIf ((\_SB.PCI0.XHC.PR2 & 0x0100))
                                {
                                    UPCP [0x00] = 0x00
                                }

                                Return (UPCP)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Buffer (0x10) {})
                                PLDP = \PLDN
                                CreateBitField (PLDP, 0x40, VIS)
                                If ((\XHC == 0x00)) {}
                                ElseIf ((\_SB.PCI0.XHC.PR2 & 0x0100))
                                {
                                    VIS &= 0x00
                                }

                                Return (PLDP)
                            }
                        }

                        Device (PRT9)
                        {
                            Name (_ADR, 0x02)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    0x00, 
                                    0x00, 
                                    0x00, 
                                    0x00
                                })
                                CopyObject (\UPC2, UPCP)
                                If ((\XHC == 0x00)) {}
                                ElseIf ((\_SB.PCI0.XHC.PR2 & 0x0200))
                                {
                                    UPCP [0x00] = 0x00
                                }

                                Return (UPCP)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Buffer (0x10) {})
                                PLDP = \PLD2
                                CreateBitField (PLDP, 0x40, VIS)
                                If ((\XHC == 0x00)) {}
                                ElseIf ((\_SB.PCI0.XHC.PR2 & 0x0200))
                                {
                                    VIS &= 0x00
                                }

                                Return (PLDP)
                            }
                        }

                        Device (PRTA)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    0x00, 
                                    0x00, 
                                    0x00, 
                                    0x00
                                })
                                CopyObject (\UPCI, UPCP)
                                If ((\XHC == 0x00)) {}
                                ElseIf ((\_SB.PCI0.XHC.PR2 & 0x0400))
                                {
                                    UPCP [0x00] = 0x00
                                }

                                Return (UPCP)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Buffer (0x10) {})
                                PLDP = \PLDI
                                CreateBitField (PLDP, 0x40, VIS)
                                If ((\XHC == 0x00)) {}
                                ElseIf ((\_SB.PCI0.XHC.PR2 & 0x0400))
                                {
                                    VIS &= 0x00
                                }

                                Return (PLDP)
                            }
                        }

                        Device (PRTB)
                        {
                            Name (_ADR, 0x04)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    0x00, 
                                    0x00, 
                                    0x00, 
                                    0x00
                                })
                                CopyObject (\UPC5, UPCP)
                                If ((\XHC == 0x00)) {}
                                ElseIf ((\_SB.PCI0.XHC.PR2 & 0x0800))
                                {
                                    UPCP [0x00] = 0x00
                                }

                                Return (UPCP)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Buffer (0x10) {})
                                PLDP = \PLD5
                                CreateBitField (PLDP, 0x40, VIS)
                                If ((\XHC == 0x00)) {}
                                ElseIf ((\_SB.PCI0.XHC.PR2 & 0x0800))
                                {
                                    VIS &= 0x00
                                }

                                Return (PLDP)
                            }
                        }

                        Device (PRTC)
                        {
                            Name (_ADR, 0x05)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    0x00, 
                                    0x00, 
                                    0x00, 
                                    0x00
                                })
                                CopyObject (\UPCI, UPCP)
                                If ((\XHC == 0x00)) {}
                                ElseIf ((\_SB.PCI0.XHC.PR2 & 0x1000))
                                {
                                    UPCP [0x00] = 0x00
                                }

                                Return (UPCP)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Buffer (0x10) {})
                                PLDP = \PLDI
                                CreateBitField (PLDP, 0x40, VIS)
                                If ((\XHC == 0x00)) {}
                                ElseIf ((\_SB.PCI0.XHC.PR2 & 0x1000))
                                {
                                    VIS &= 0x00
                                }

                                Return (PLDP)
                            }
                        }

                        Device (PRTD)
                        {
                            Name (_ADR, 0x06)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    0x00, 
                                    0x00, 
                                    0x00, 
                                    0x00
                                })
                                CopyObject (\UPCI, UPCP)
                                If ((\XHC == 0x00)) {}
                                ElseIf ((\_SB.PCI0.XHC.PR2 & 0x2000))
                                {
                                    UPCP [0x00] = 0x00
                                }

                                Return (UPCP)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Return (\PLDI)
                            }

                            Device (WCAM)
                            {
                                Name (_ADR, 0x06)  // _ADR: Address
                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    If (\WIN8)
                                    {
                                        Return (0x0F)
                                    }
                                    Else
                                    {
                                        Return (0x00)
                                    }
                                }

                                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                                {
                                    Return (\UPCI)
                                }

                                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                                {
                                    Return (\PLDC)
                                }
                            }
                        }
                    }
                }
                Name(_PRW, Package() { 0x0D, 0 })
                Method (_DSM, 4, NotSerialized)
                {
                    If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
                    Return (Package()
                    {
                        "subsystem-id", Buffer() { 0x70, 0x72, 0x00, 0x00 },
                        "subsystem-vendor-id", Buffer() { 0x86, 0x80, 0x00, 0x00 },
                        "AAPL,current-available", 2100,
                        "AAPL,current-extra", 2200,
                        "AAPL,current-extra-in-sleep", 1600,
                        "AAPL,device-internal", 0x02,
                        "AAPL,max-port-current-in-sleep", 2100,
                    })
                }
            }

            Device (HDEF)
            {
                Name (_ADR, 0x001B0000)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, 0x00)
                
                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    Noop
                }
                Name(_PRW, Package() { 0x0D, 0 })
                Method (_DSM, 4, NotSerialized)
                {
                    If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
                    Return (Package()
                    {
                        "layout-id", Buffer() { 28, 0x00, 0x00, 0x00 },
                        "hda-gfx", Buffer() { "onboard-1" },
                        "PinConfigurations", Buffer() { },
                        //"MaximumBootBeepVolume", 77,
                    })
                }
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Name (BDEV, 0xFF)
            Name (BSTS, 0x00)
            Name (BHKE, 0x00)
            Method (_Q2C, 0, NotSerialized)  // _Qxx: EC Query
            {
                If ((BSTS == 0x00))
                {
                    BDEV = BGID (0x00)
                    NBRE (BDEV)
                }
            }

            Method (_Q2D, 0, NotSerialized)  // _Qxx: EC Query
            {
                BDEV = BGID (0x00)
                NBIN (BDEV)
            }

            Method (_Q38, 0, NotSerialized)  // _Qxx: EC Query
            {
                Local0 = BGID (0x00)
                If ((Local0 == 0x0F))
                {
                    BDIS ()
                    \BHDP (0x01, 0x00)
                    NBEJ (BDEV)
                    BDEV = Local0
                    If ((\BIDE == 0x03))
                    {
                        \_SB.PCI0.SAT1.PRIM.GTME = 0x00
                        \_SB.PCI0.SAT1.SCND.GTME = 0x00
                    }
                }
                ElseIf (HPBU) {}
                Else
                {
                    BDEV = Local0
                    NBIN (Local0)
                }
            }

            Method (NBRE, 1, NotSerialized)
            {
                If ((Arg0 < 0x0C))
                {
                    If ((\BIDE == 0x03))
                    {
                        Notify (\_SB.PCI0.SAT1.SCND.MSTR, 0x03)
                    }
                    Else
                    {
                        Notify (\_SB.PCI0.SAT1.PRT2, 0x03)
                    }
                }
            }

            Method (NBEJ, 1, NotSerialized)
            {
                If ((BSTS == 0x00))
                {
                    If ((Arg0 < 0x0C))
                    {
                        If ((\BIDE == 0x03))
                        {
                            Notify (\_SB.PCI0.SAT1.SCND.MSTR, 0x01)
                        }
                        Else
                        {
                            Notify (\_SB.PCI0.SAT1.PRT2, 0x01)
                        }
                    }
                }

                BEEP (0x00)
                BSTS = 0x00
            }

            Method (NBIN, 1, NotSerialized)
            {
                If ((Arg0 < 0x0C))
                {
                    BEN (0x01)
                    If ((\BIDE == 0x03))
                    {
                        Notify (\_SB.PCI0.SAT1.SCND.MSTR, 0x01)
                    }
                    Else
                    {
                        Notify (\_SB.PCI0.SAT1.PRT2, 0x01)
                    }
                }

                BEEP (0x00)
                BSTS = 0x00
            }

            Method (BEJ0, 1, NotSerialized)
            {
                If (Arg0)
                {
                    BDIS ()
                    \BHDP (0x01, 0x00)
                    BSTS = 0x01
                    If (BHKE)
                    {
                        BHKE = 0x00
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x3003)
                    }
                }
                Else
                {
                    BSTS = 0x00
                }
            }

            Method (BEJ3, 1, NotSerialized)
            {
                If (Arg0)
                {
                    BDIS ()
                    BSTS = 0x01
                }
                Else
                {
                    BSTS = 0x00
                }
            }

            Method (BPTS, 1, NotSerialized)
            {
                HDBM = 0x01
                If ((BSTS != 0x00))
                {
                    BDEV = 0x0F
                    BSTS = 0x00
                }

                BHKE = 0x00
                BUWK (0x00)
            }

            Method (BWAK, 1, NotSerialized)
            {
                BUWK (0x00)
                Local0 = BGID (0x00)
                If ((BSTS == 0x00))
                {
                    If ((Local0 != BDEV))
                    {
                        NBEJ (BDEV)
                        BDEV = Local0
                        NBIN (Local0)
                    }
                    ElseIf ((\LFDC || (BDEV != 0x0D)))
                    {
                        If ((Local0 != 0x0F))
                        {
                            If (HPBU)
                            {
                                If ((Arg0 <= 0x02)) {}
                                Else
                                {
                                    NBRE (Local0)
                                }
                            }
                        }
                    }
                }

                If ((BDEV < 0x0C))
                {
                    GO34 = 0x00
                }
                Else
                {
                    GO34 = 0x01
                }
            }

            Method (BDIS, 0, NotSerialized)
            {
                If (!GOPS ())
                {
                    If (!GO34)
                    {
                        GO34 = 0x01
                    }

                    SOPS (0x01)
                    \IDET = 0x0F
                }
            }

            Method (BPON, 1, NotSerialized)
            {
                If (GOPS ())
                {
                    SOPS (0x00)
                    If (GO34)
                    {
                        GO34 = 0x00
                    }

                    Sleep (0x01F4)
                }
            }

            Method (BEN, 1, NotSerialized)
            {
                If (GOPS ())
                {
                    BPON (Arg0)
                    If (Arg0)
                    {
                        IRDY ()
                    }
                }
            }

            Method (BSTA, 1, NotSerialized)
            {
                If (GOPS ())
                {
                    Return (0x00)
                }

                BINI ()
                If ((Arg0 == 0x01))
                {
                    Return ((BDEV < 0x0C))
                }

                Return (0x00)
            }

            Method (BUWK, 1, NotSerialized)
            {
                If (\H8DR)
                {
                    If (Arg0)
                    {
                        \_SB.PCI0.LPC.EC.HWBU = 0x01
                    }
                    Else
                    {
                        \_SB.PCI0.LPC.EC.HWBU = 0x00
                    }
                }
                ElseIf (Arg0)
                {
                    \MBEC (0x32, 0xFF, 0x80)
                }
                Else
                {
                    \MBEC (0x32, 0x7F, 0x00)
                }
            }

            Method (BINI, 0, NotSerialized)
            {
                If ((BDEV == 0xFF))
                {
                    BDEV = BGID (0x00)
                }
            }

            Method (BGID, 1, NotSerialized)
            {
                If (Arg0)
                {
                    Local0 = 0xFF
                }
                Else
                {
                    If (\H8DR)
                    {
                        Local1 = HPBU
                        Local2 = HBID
                    }
                    Else
                    {
                        Local2 = RBEC (0x47)
                        Local1 = (Local2 & 0x01)
                        Local2 &= 0x04
                        Local2 >>= 0x02
                    }

                    If (Local2)
                    {
                        Local0 = 0x0F
                    }
                    ElseIf (HDUB)
                    {
                        Local0 = 0x0F
                    }
                    ElseIf (((\IDET == 0x03) || (\IDET == 0x06)))
                    {
                        Local0 = \IDET
                    }
                    Else
                    {
                        Local0 = 0x07
                    }

                    If ((Local0 == 0x0F)) {}
                }

                If ((\HDUB && (Local0 < 0x0C)))
                {
                    Local0 = 0x0F
                }

                Return (Local0)
            }

            Method (IRDY, 0, NotSerialized)
            {
                Local0 = 0x01F4
                Local1 = 0x3C
                Local2 = Zero
                While (Local1)
                {
                    Sleep (Local0)
                    Local3 = \BCHK ()
                    If (!Local3)
                    {
                        Break
                    }

                    If ((Local3 == 0x02))
                    {
                        Local2 = One
                        Break
                    }

                    Local1--
                }

                Return (Local2)
            }

            Method (GOPS, 0, Serialized)
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    _T_0 = BRID
                    If ((_T_0 == 0x00))
                    {
                        If (GO04)
                        {
                            Local0 = One
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }
                    ElseIf ((_T_0 == 0x01))
                    {
                        If (GO24)
                        {
                            Local0 = Zero
                        }
                        Else
                        {
                            Local0 = One
                        }
                    }
                    ElseIf ((_T_0 == 0x02))
                    {
                        If (GO24)
                        {
                            Local0 = Zero
                        }
                        Else
                        {
                            Local0 = One
                        }
                    }
                    ElseIf ((_T_0 == 0x03))
                    {
                        If (GO24)
                        {
                            Local0 = Zero
                        }
                        Else
                        {
                            Local0 = One
                        }
                    }
                    ElseIf (GO24)
                    {
                        Local0 = Zero
                    }
                    Else
                    {
                        Local0 = One
                    }

                    Break
                }

                Return (Local0)
            }

            Method (SOPS, 1, Serialized)
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                Local0 = Arg0
                While (One)
                {
                    _T_0 = BRID
                    If ((_T_0 == 0x00))
                    {
                        GO04 = Local0
                    }
                    ElseIf ((_T_0 == 0x01))
                    {
                        If (Local0)
                        {
                            GO24 = Zero
                        }
                        Else
                        {
                            GO24 = One
                        }
                    }
                    ElseIf ((_T_0 == 0x02))
                    {
                        If (Local0)
                        {
                            GO24 = Zero
                        }
                        Else
                        {
                            GO24 = One
                        }
                    }
                    ElseIf ((_T_0 == 0x03))
                    {
                        If (Local0)
                        {
                            GO24 = Zero
                        }
                        Else
                        {
                            GO24 = One
                        }
                    }
                    ElseIf (Local0)
                    {
                        GO24 = Zero
                    }
                    Else
                    {
                        GO24 = One
                    }

                    Break
                }
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Method (_Q43, 0, NotSerialized)  // _Qxx: EC Query
            {
                \UCMS (0x18)
            }

            Method (SAUM, 1, NotSerialized)
            {
                If ((Arg0 > 0x03))
                {
                    Noop
                }
                ElseIf (\H8DR)
                {
                    HAUM = Arg0
                }
                Else
                {
                    \MBEC (0x03, 0x9F, (Arg0 << 0x05))
                }
            }
        }

        Scope (\_SB.PCI0.LPC.EC.HKEY)
        {
            Method (GSMS, 1, NotSerialized)
            {
                Return (\AUDC (0x00, 0x00))
            }

            Method (SSMS, 1, NotSerialized)
            {
                If ((Arg0 == 0x00))
                {
                    GO06 = 0x01
                }
                Else
                {
                    GO06 = 0x00
                }

                Return (\AUDC (0x01, (Arg0 & 0x01)))
            }

            Method (SHDA, 1, NotSerialized)
            {
                Return (\AUDC (0x02, (Arg0 & 0x01)))
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Name (BRTW, Package (0x12)
            {
                0x64, 
                0x64, 
                0x05, 
                0x0A, 
                0x14, 
                0x19, 
                0x1E, 
                0x23, 
                0x28, 
                0x2D, 
                0x32, 
                0x37, 
                0x3C, 
                0x41, 
                0x46, 
                0x50, 
                0x5A, 
                0x64
            })
            Name (BRTB, Package (0x04)
            {
                Package (0x16)
                {
                    0x14, 
                    0x04, 
                    0x04, 
                    0x07, 
                    0x09, 
                    0x0C, 
                    0x10, 
                    0x15, 
                    0x1C, 
                    0x25, 
                    0x32, 
                    0x40, 
                    0x50, 
                    0x64, 
                    0x82, 
                    0xA5, 
                    0xCD, 
                    0xFF, 
                    0xDC, 
                    0xDC, 
                    0x04, 
                    0x04
                }, 

                Package (0x16)
                {
                    0x19, 
                    0x04, 
                    0x04, 
                    0x06, 
                    0x08, 
                    0x0B, 
                    0x0F, 
                    0x14, 
                    0x1B, 
                    0x24, 
                    0x31, 
                    0x3F, 
                    0x50, 
                    0x66, 
                    0x82, 
                    0xA5, 
                    0xCD, 
                    0xFF, 
                    0xDC, 
                    0xDC, 
                    0x04, 
                    0x04
                }, 

                Package (0x16)
                {
                    0x1E, 
                    0x03, 
                    0x03, 
                    0x05, 
                    0x08, 
                    0x0A, 
                    0x0D, 
                    0x0F, 
                    0x12, 
                    0x19, 
                    0x22, 
                    0x2E, 
                    0x3E, 
                    0x54, 
                    0x6E, 
                    0x93, 
                    0xC1, 
                    0xFF, 
                    0xDC, 
                    0xDC, 
                    0x03, 
                    0x03
                }, 

                Package (0x16)
                {
                    0x00, 
                    0x04, 
                    0x04, 
                    0x07, 
                    0x09, 
                    0x0C, 
                    0x10, 
                    0x15, 
                    0x1C, 
                    0x25, 
                    0x32, 
                    0x40, 
                    0x50, 
                    0x64, 
                    0x82, 
                    0xA5, 
                    0xCD, 
                    0xFF, 
                    0xDC, 
                    0xDC, 
                    0x04, 
                    0x04
                }
            })
            Name (BRTD, Package (0x04)
            {
                Package (0x65)
                {
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
                    0x1C, 
                    0x1D, 
                    0x1F, 
                    0x21, 
                    0x22, 
                    0x24, 
                    0x26, 
                    0x28, 
                    0x2A, 
                    0x2C, 
                    0x2E, 
                    0x30, 
                    0x33, 
                    0x35, 
                    0x37, 
                    0x3A, 
                    0x3C, 
                    0x3F, 
                    0x41, 
                    0x44, 
                    0x46, 
                    0x49, 
                    0x4C, 
                    0x4F, 
                    0x51, 
                    0x54, 
                    0x57, 
                    0x5A, 
                    0x5D, 
                    0x61, 
                    0x64, 
                    0x67, 
                    0x6A, 
                    0x6E, 
                    0x71, 
                    0x75, 
                    0x78, 
                    0x7C, 
                    0x80, 
                    0x83, 
                    0x87, 
                    0x8B, 
                    0x8F, 
                    0x93, 
                    0x97, 
                    0x9B, 
                    0x9F, 
                    0xA3, 
                    0xA8, 
                    0xAC, 
                    0xB0, 
                    0xB5, 
                    0xB9, 
                    0xBE, 
                    0xC3, 
                    0xC7, 
                    0xCC, 
                    0xCE, 
                    0xD1, 
                    0xD3, 
                    0xD6, 
                    0xD8, 
                    0xDB, 
                    0xDD, 
                    0xE0, 
                    0xE2, 
                    0xE5, 
                    0xE7, 
                    0xEA, 
                    0xEC, 
                    0xEF, 
                    0xF2, 
                    0xF4, 
                    0xF7, 
                    0xFA, 
                    0xFC, 
                    0xFF
                }, 

                Package (0x65)
                {
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
                    0x25, 
                    0x26, 
                    0x28, 
                    0x2A, 
                    0x2C, 
                    0x2E, 
                    0x2F, 
                    0x31, 
                    0x33, 
                    0x35, 
                    0x37, 
                    0x3A, 
                    0x3C, 
                    0x3E, 
                    0x40, 
                    0x42, 
                    0x45, 
                    0x47, 
                    0x4A, 
                    0x4C, 
                    0x4E, 
                    0x51, 
                    0x54, 
                    0x56, 
                    0x59, 
                    0x5C, 
                    0x5E, 
                    0x61, 
                    0x64, 
                    0x67, 
                    0x6A, 
                    0x6D, 
                    0x70, 
                    0x73, 
                    0x76, 
                    0x79, 
                    0x7D, 
                    0x80, 
                    0x83, 
                    0x86, 
                    0x8A, 
                    0x8D, 
                    0x91, 
                    0x94, 
                    0x98, 
                    0x9C, 
                    0x9F, 
                    0xA3, 
                    0xA7, 
                    0xAB, 
                    0xAF, 
                    0xB4, 
                    0xB8, 
                    0xBC, 
                    0xC1, 
                    0xC5, 
                    0xCA, 
                    0xCE, 
                    0xD3, 
                    0xD8, 
                    0xDC, 
                    0xE1, 
                    0xE6, 
                    0xEB, 
                    0xF0, 
                    0xF5, 
                    0xFA, 
                    0xFF
                }, 

                Package (0x65)
                {
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
                    0x1C, 
                    0x1D, 
                    0x1F, 
                    0x21, 
                    0x22, 
                    0x24, 
                    0x26, 
                    0x28, 
                    0x2A, 
                    0x2C, 
                    0x2E, 
                    0x30, 
                    0x33, 
                    0x35, 
                    0x37, 
                    0x3A, 
                    0x3C, 
                    0x3F, 
                    0x41, 
                    0x44, 
                    0x46, 
                    0x49, 
                    0x4C, 
                    0x4F, 
                    0x51, 
                    0x54, 
                    0x57, 
                    0x5A, 
                    0x5D, 
                    0x61, 
                    0x64, 
                    0x67, 
                    0x6A, 
                    0x6E, 
                    0x71, 
                    0x75, 
                    0x78, 
                    0x7C, 
                    0x80, 
                    0x83, 
                    0x87, 
                    0x8B, 
                    0x8F, 
                    0x93, 
                    0x97, 
                    0x9B, 
                    0x9F, 
                    0xA3, 
                    0xA8, 
                    0xAC, 
                    0xB0, 
                    0xB5, 
                    0xB9, 
                    0xBE, 
                    0xC3, 
                    0xC7, 
                    0xCC, 
                    0xCE, 
                    0xD1, 
                    0xD3, 
                    0xD6, 
                    0xD8, 
                    0xDB, 
                    0xDD, 
                    0xE0, 
                    0xE2, 
                    0xE5, 
                    0xE7, 
                    0xEA, 
                    0xEC, 
                    0xEF, 
                    0xF2, 
                    0xF4, 
                    0xF7, 
                    0xFA, 
                    0xFC, 
                    0xFF
                }, 

                Package (0x65)
                {
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
                    0x1C, 
                    0x1D, 
                    0x1F, 
                    0x21, 
                    0x22, 
                    0x24, 
                    0x26, 
                    0x28, 
                    0x2A, 
                    0x2C, 
                    0x2E, 
                    0x30, 
                    0x33, 
                    0x35, 
                    0x37, 
                    0x3A, 
                    0x3C, 
                    0x3F, 
                    0x41, 
                    0x44, 
                    0x46, 
                    0x49, 
                    0x4C, 
                    0x4F, 
                    0x51, 
                    0x54, 
                    0x57, 
                    0x5A, 
                    0x5D, 
                    0x61, 
                    0x64, 
                    0x67, 
                    0x6A, 
                    0x6E, 
                    0x71, 
                    0x75, 
                    0x78, 
                    0x7C, 
                    0x80, 
                    0x83, 
                    0x87, 
                    0x8B, 
                    0x8F, 
                    0x93, 
                    0x97, 
                    0x9B, 
                    0x9F, 
                    0xA3, 
                    0xA8, 
                    0xAC, 
                    0xB0, 
                    0xB5, 
                    0xB9, 
                    0xBE, 
                    0xC3, 
                    0xC7, 
                    0xCC, 
                    0xCE, 
                    0xD1, 
                    0xD3, 
                    0xD6, 
                    0xD8, 
                    0xDB, 
                    0xDD, 
                    0xE0, 
                    0xE2, 
                    0xE5, 
                    0xE7, 
                    0xEA, 
                    0xEC, 
                    0xEF, 
                    0xF2, 
                    0xF4, 
                    0xF7, 
                    0xFA, 
                    0xFC, 
                    0xFF
                }
            })
            Method (_Q14, 0, NotSerialized)  // _Qxx: EC Query
            {
                D80P = 0x14
                If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x8000))
                {
                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1010)
                }

                If (\NBCF)
                {
                    If (\VIGD)
                    {
                        Notify (\_SB.PCI0.IGPU.LCD0, 0x86)
                    }
                    Else
                    {
                        Notify (\_SB.PCI0.PEG.VID.LCD0, 0x86)
                    }
                }
                Else
                {
                    Local0 = \BRLV
                    If ((Local0 != 0x0F))
                    {
                        Local0++
                        \BRLV = Local0
                    }

                    If (\VIGD)
                    {
                        \UCMS (0x16)
                        \_SB.PCI0.LPC.EC.BRNS ()
                    }
                    Else
                    {
                        \VBRC (Local0)
                    }

                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6050)
                }
            }

            Method (_Q15, 0, NotSerialized)  // _Qxx: EC Query
            {
                D80P = 0x15
                If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x00010000))
                {
                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1011)
                }

                If (\NBCF)
                {
                    If (\VIGD)
                    {
                        Notify (\_SB.PCI0.IGPU.LCD0, 0x87)
                    }
                    Else
                    {
                        Notify (\_SB.PCI0.PEG.VID.LCD0, 0x87)
                    }
                }
                Else
                {
                    Local0 = \BRLV
                    If (Local0)
                    {
                        Local0--
                        \BRLV = Local0
                    }

                    If (\VIGD)
                    {
                        \UCMS (0x16)
                        \_SB.PCI0.LPC.EC.BRNS ()
                    }
                    Else
                    {
                        \VBRC (Local0)
                    }

                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6050)
                }

                Return (Zero)
            }

            Method (BRNS, 0, NotSerialized)
            {
                Local0 = (\BRLV + 0x02)
                Local3 = \BRTN
                If (\_SB.PCI0.IGPU.DRDY)
                {
                    If ((0x00 == Local0))
                    {
                        Local1 = DerefOf (DerefOf (BRTB [Local3]) [0x14])
                        Local2 = DerefOf (DerefOf (BRTB [Local3]) [0x12])
                    }
                    Else
                    {
                        Local1 = DerefOf (DerefOf (BRTB [Local3]) [0x15])
                        Local2 = DerefOf (DerefOf (BRTB [Local3]) [0x13])
                    }

                    Local2 = (Local1 | (Local2 << 0x09))
                    \_SB.PCI0.IGPU.AINT (0x03, Local2)
                    Local2 = DerefOf (DerefOf (BRTB [Local3]) [Local0])
                    \_SB.PCI0.IGPU.AINT (0x01, Local2)
                }
                Else
                {
                    \UCMS (0x12)
                }
            }

            Method (BRCF, 1, NotSerialized)
            {
                If ((Arg0 < 0x00))
                {
                    Return (0x00)
                }

                If ((Arg0 > 0x64))
                {
                    Return (0x0F)
                }

                Local0 = (Arg0 + 0x03)
                Local0 *= 0x0F
                Divide (Local0, 0x64, Local0, Local1)
                Return (Local1)
            }

            Method (BRCD, 1, NotSerialized)
            {
                Local0 = DerefOf (DerefOf (BRTD [\BRTN]) [Arg0])
                Return (Local0)
            }

            Method (BFRQ, 0, NotSerialized)
            {
                Local0 = 0x80000100
                Local1 = DerefOf (DerefOf (BRTB [\BRTN]) [0x13])
                Local0 |= (Local1 << 0x09)
                Local1 = DerefOf (DerefOf (BRTB [\BRTN]) [0x15])
                Local0 |= Local1
                Return (Local0)
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Method (_Q19, 0, NotSerialized)  // _Qxx: EC Query
            {
                If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x00800000))
                {
                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1018)
                }

                \UCMS (0x03)
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Method (_Q63, 0, NotSerialized)  // _Qxx: EC Query
            {
                If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x00080000))
                {
                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1014)
                }

                \UCMS (0x0B)
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Method (_Q70, 0, NotSerialized)  // _Qxx: EC Query
            {
                FNST ()
            }

            Method (_Q72, 0, NotSerialized)  // _Qxx: EC Query
            {
                FNST ()
            }

            Method (_Q73, 0, NotSerialized)  // _Qxx: EC Query
            {
                FNST ()
            }

            Method (FNST, 0, NotSerialized)
            {
                If (\H8DR)
                {
                    Local0 = HFNS
                    Local1 = HFNE
                }
                Else
                {
                    Local0 = (\RBEC (0x0E) & 0x03)
                    Local1 = (\RBEC (0x00) & 0x08)
                }

                If (Local1)
                {
                    If ((Local0 == 0x00))
                    {
                        \UCMS (0x11)
                    }

                    If ((Local0 == 0x01))
                    {
                        \UCMS (0x0F)
                    }

                    If ((Local0 == 0x02))
                    {
                        \UCMS (0x10)
                    }

                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6005)
                }
            }
        }

        Scope (\_SB.PCI0.LPC.EC.HKEY)
        {
            Method (GHSL, 1, NotSerialized)
            {
                Return (\FNSC (0x00, 0x00))
            }

            Method (SHSL, 1, NotSerialized)
            {
                Return (\FNSC (0x01, (Arg0 & 0x01)))
            }
        }

        Scope (\_SB.PCI0.LPC.EC.HKEY)
        {
            Name (WGFL, 0x00)
            Method (WSIF, 0, NotSerialized)
            {
                Return (0x00)
            }

            Method (GWLS, 0, NotSerialized)
            {
                If (\_SB.PCI0.LPC.EC.DCBD)
                {
                    Return (0x01)
                }

                If (\_SB.PCI0.LPC.EC.DCWL)
                {
                    Return (0x01)
                }

                If (\_SB.PCI0.LPC.EC.DCWW)
                {
                    Return (0x01)
                }

                Return (\_SB.PCI0.LPC.EC.GSTS)
            }

            Method (SWLS, 1, NotSerialized)
            {
                If ((Arg0 & 0x01))
                {
                    If ((\_SB.PCI0.LPC.EC.DCBD == 0x01))
                    {
                        \_SB.PCI0.LPC.EC.DCBD = 0x01
                        GO22 = 0x01
                    }
                    Else
                    {
                        \_SB.PCI0.LPC.EC.DCBD = 0x00
                    }

                    If ((\_SB.PCI0.LPC.EC.DCWL == 0x01))
                    {
                        \_SB.PCI0.LPC.EC.DCWL = 0x01
                    }
                    Else
                    {
                        \_SB.PCI0.LPC.EC.DCWL = 0x00
                    }

                    If ((\_SB.PCI0.LPC.EC.DCWW == 0x01))
                    {
                        \_SB.PCI0.LPC.EC.DCWW = 0x01
                        GO39 = 0x01
                    }
                    Else
                    {
                        \_SB.PCI0.LPC.EC.DCWW = 0x00
                        GO39 = 0x00
                    }

                    \_SB.PCI0.LPC.EC.GSTS = 0x01
                }
                Else
                {
                    GO39 = 0x00
                    GO22 = 0x00
                    \_SB.PCI0.LPC.EC.DCBD = 0x00
                    \_SB.PCI0.LPC.EC.DCWL = 0x00
                    \_SB.PCI0.LPC.EC.DCWW = 0x00
                    \_SB.PCI0.LPC.EC.GSTS = 0x00
                    WGFL &= ~0x20
                    WGFL &= ~0x02
                }
            }

            Method (GWLN, 0, NotSerialized)
            {
                Local0 = 0x00
                If ((WGFL & 0x0100))
                {
                    Local0 |= 0x01
                }

                If ((WGFL & 0x0800))
                {
                    Return (Local0)
                }

                If (LPWS ())
                {
                    Local0 |= 0x02
                }

                Local0 |= 0x04
                Return (Local0)
            }

            Method (SWLN, 1, NotSerialized)
            {
                If ((Arg0 & 0x02))
                {
                    LPWC (0x01)
                }
                Else
                {
                    LPWC (0x00)
                }
            }

            Method (GWAN, 0, NotSerialized)
            {
                Local0 = 0x00
                If ((WGFL & 0x01))
                {
                    Local0 |= 0x01
                }

                If ((WGFL & 0x08))
                {
                    Return (Local0)
                }

                If (WPWS ())
                {
                    Local0 |= 0x02
                }

                Local0 |= 0x04
                Return (Local0)
            }

            Method (SWAN, 1, NotSerialized)
            {
                If ((Arg0 & 0x02))
                {
                    WPWC (0x01)
                }
                Else
                {
                    WPWC (0x00)
                }
            }

            Method (GBDC, 0, NotSerialized)
            {
                Local0 = 0x00
                If ((WGFL & 0x10))
                {
                    Local0 |= 0x01
                }

                If ((WGFL & 0x80))
                {
                    Return (Local0)
                }

                If (BPWS ())
                {
                    Local0 |= 0x02
                }

                Local0 |= 0x04
                Return (Local0)
            }

            Method (SBDC, 1, NotSerialized)
            {
                If ((Arg0 & 0x02))
                {
                    BPWC (0x01)
                }
                Else
                {
                    BPWC (0x00)
                }
            }

            Method (LPWS, 0, NotSerialized)
            {
                If (\H8DR)
                {
                    Local0 = \_SB.PCI0.LPC.EC.DCWL
                }
                Else
                {
                    Local0 = ((\RBEC (0x3A) & 0x20) >> 0x05)
                }

                Return (Local0)
            }

            Method (LPWC, 1, NotSerialized)
            {
                Local0 = 0x00
                If ((Arg0 && ((WGFL & 0x0100) && !(WGFL & 0x0800))))
                {
                    If (\H8DR)
                    {
                        \_SB.PCI0.LPC.EC.DCWL = One
                    }
                    Else
                    {
                        \MBEC (0x3A, 0xFF, 0x20)
                    }

                    WGFL |= 0x0200
                }
                Else
                {
                    If (\H8DR)
                    {
                        \_SB.PCI0.LPC.EC.DCWL = Zero
                    }
                    Else
                    {
                        \MBEC (0x3A, 0xDF, 0x00)
                    }

                    Local0 = ~0x0200
                    WGFL &= Local0
                }
            }

            Method (WPWS, 0, NotSerialized)
            {
                If (\H8DR)
                {
                    Local0 = \_SB.PCI0.LPC.EC.DCWW
                }
                Else
                {
                    Local0 = ((\RBEC (0x3A) & 0x40) >> 0x06)
                }

                Return (Local0)
            }

            Method (WPWC, 1, NotSerialized)
            {
                If ((Arg0 && ((WGFL & 0x01) && !(WGFL & 0x08))))
                {
                    If (\H8DR)
                    {
                        \_SB.PCI0.LPC.EC.DCWW = One
                    }
                    Else
                    {
                        \MBEC (0x3A, 0xFF, 0x40)
                    }

                    GO39 = 0x01
                    WGFL |= 0x02
                }
                Else
                {
                    If (\H8DR)
                    {
                        \_SB.PCI0.LPC.EC.DCWW = Zero
                    }
                    Else
                    {
                        \MBEC (0x3A, 0xBF, 0x00)
                    }

                    GO39 = 0x00
                    WGFL &= ~0x02
                }
            }

            Method (BPWS, 0, NotSerialized)
            {
                If (\H8DR)
                {
                    Local0 = \_SB.PCI0.LPC.EC.DCBD
                    If ((Local0 == 0x01))
                    {
                        GO22 = 0x01
                    }
                    Else
                    {
                        GO22 = 0x00
                    }
                }
                Else
                {
                    Local0 = ((\RBEC (0x3A) & 0x10) >> 0x04)
                }

                Return (Local0)
            }

            Method (BPWC, 1, NotSerialized)
            {
                If ((Arg0 && ((WGFL & 0x10) && !(WGFL & 0x80))))
                {
                    If (\H8DR)
                    {
                        \_SB.PCI0.LPC.EC.DCBD = One
                    }
                    Else
                    {
                        \MBEC (0x3A, 0xFF, 0x10)
                    }

                    GO22 = 0x01
                    WGFL |= 0x20
                }
                Else
                {
                    If (\H8DR)
                    {
                        \_SB.PCI0.LPC.EC.DCBD = Zero
                    }
                    Else
                    {
                        \MBEC (0x3A, 0xEF, 0x00)
                    }

                    GO22 = 0x00
                    WGFL &= ~0x20
                }
            }

            Method (WGIN, 0, NotSerialized)
            {
                WGFL = 0x00
                WGFL = \WGSV (0x01)
                If (\WIN8)
                {
                    If ((WGFL && 0x10))
                    {
                        BPWC (0x01)
                    }

                    WGFL |= 0x0100
                    LPWC (0x01)
                }

                If (WPWS ())
                {
                    WGFL |= 0x02
                }

                If (BPWS ())
                {
                    WGFL |= 0x20
                }
            }

            Method (WGPS, 1, NotSerialized)
            {
                If ((Arg0 >= 0x04))
                {
                    \BLTH (0x05)
                }
            }

            Method (WGWK, 1, NotSerialized)
            {
                If ((WGFL & 0x20))
                {
                    BPWC (0x01)
                }

                If ((WGFL & 0x02))
                {
                    WPWC (0x01)
                }
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Method (_Q41, 0, NotSerialized)  // _Qxx: EC Query
            {
                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x7000)
            }
        }

        Device (WMI1)
        {
            Name (_HID, EisaId ("PNP0C14"))  // _HID: Hardware ID
            Name (_UID, 0x01)  // _UID: Unique ID
            Name (_WDG, Buffer (0xB4)
            {
                /* 0000 */  0x0E, 0x23, 0xF5, 0x51, 0x77, 0x96, 0xCD, 0x46,
                /* 0008 */  0xA1, 0xCF, 0xC0, 0xB2, 0x3E, 0xE3, 0x4D, 0xB7,
                /* 0010 */  0x41, 0x30, 0x50, 0x05, 0x64, 0x9A, 0x47, 0x98,
                /* 0018 */  0xF5, 0x33, 0x33, 0x4E, 0xA7, 0x07, 0x8E, 0x25,
                /* 0020 */  0x1E, 0xBB, 0xC3, 0xA1, 0x41, 0x31, 0x01, 0x06,
                /* 0028 */  0xEF, 0x54, 0x4B, 0x6A, 0xED, 0xA5, 0x33, 0x4D,
                /* 0030 */  0x94, 0x55, 0xB0, 0xD9, 0xB4, 0x8D, 0xF4, 0xB3,
                /* 0038 */  0x41, 0x32, 0x01, 0x06, 0xB6, 0xEB, 0xF1, 0x74,
                /* 0040 */  0x7A, 0x92, 0x7D, 0x4C, 0x95, 0xDF, 0x69, 0x8E,
                /* 0048 */  0x21, 0xE8, 0x0E, 0xB5, 0x41, 0x33, 0x01, 0x06,
                /* 0050 */  0xFF, 0x04, 0xEF, 0x7E, 0x28, 0x43, 0x7C, 0x44,
                /* 0058 */  0xB5, 0xBB, 0xD4, 0x49, 0x92, 0x5D, 0x53, 0x8D,
                /* 0060 */  0x41, 0x34, 0x01, 0x06, 0x9E, 0x15, 0xDB, 0x8A,
                /* 0068 */  0x32, 0x1E, 0x5C, 0x45, 0xBC, 0x93, 0x30, 0x8A,
                /* 0070 */  0x7E, 0xD9, 0x82, 0x46, 0x41, 0x35, 0x01, 0x01,
                /* 0078 */  0xFD, 0xD9, 0x51, 0x26, 0x1C, 0x91, 0x69, 0x4B,
                /* 0080 */  0xB9, 0x4E, 0xD0, 0xDE, 0xD5, 0x96, 0x3B, 0xD7,
                /* 0088 */  0x41, 0x36, 0x01, 0x06, 0x1A, 0x65, 0x64, 0x73,
                /* 0090 */  0x2F, 0x13, 0xE7, 0x4F, 0xAD, 0xAA, 0x40, 0xC6,
                /* 0098 */  0xC7, 0xEE, 0x2E, 0x3B, 0x41, 0x37, 0x01, 0x06,
                /* 00A0 */  0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,
                /* 00A8 */  0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,
                /* 00B0 */  0x42, 0x41, 0x01, 0x00                         
            })
            Name (RETN, Package (0x05)
            {
                "Success", 
                "Not Supported", 
                "Invalid Parameter", 
                "Access Denied", 
                "System Busy"
            })
            Name (ITEM, Package (0x55)
            {
                Package (0x02)
                {
                    0x0E, 
                    "WakeOnLAN"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "EthernetLANOptionROM"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "USBBIOSSupport"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "AlwaysOnUSB"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "TrackPoint"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "TouchPad"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "FnKeyLock"
                }, 

                Package (0x02)
                {
                    0x04, 
                    "ThinkPadNumLock"
                }, 

                Package (0x02)
                {
                    0x0C, 
                    "PowerOnNumLock"
                }, 

                Package (0x02)
                {
                    0x05, 
                    "BootDisplayDevice"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "SpeedStep"
                }, 

                Package (0x02)
                {
                    0x09, 
                    "AdaptiveThermalManagementAC"
                }, 

                Package (0x02)
                {
                    0x09, 
                    "AdaptiveThermalManagementBattery"
                }, 

                Package (0x02)
                {
                    0x06, 
                    "CDROMSpeed"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "CPUPowerManagement"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "PowerControlBeep"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "LowBatteryAlarm"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "PasswordBeep"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "KeyboardBeep"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "ExtendedMemoryTest"
                }, 

                Package (0x02)
                {
                    0x07, 
                    "SATAControllerMode"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "CoreMultiProcessing"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "VirtualizationTechnology"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "LockBIOSSetting"
                }, 

                Package (0x02)
                {
                    0x0B, 
                    "MinimumPasswordLength"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BIOSPasswordAtUnattendedBoot"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "FingerprintPredesktopAuthentication"
                }, 

                Package (0x02)
                {
                    0x08, 
                    "FingerprintReaderPriority"
                }, 

                Package (0x02)
                {
                    0x03, 
                    "FingerprintSecurityMode"
                }, 

                Package (0x02)
                {
                    0x02, 
                    "SecurityChip"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BIOSUpdateByEndUsers"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "DataExecutionPrevention"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "EthernetLANAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "WirelessLANAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "WirelessWANAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BluetoothAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "WirelessUSBAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "ModemAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "USBPortAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "IEEE1394Access"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "ExpressCardAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "PCIExpressSlotAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "UltrabayAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "MemoryCardSlotAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "SmartCardSlotAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "IntegratedCameraAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "MicrophoneAccess"
                }, 

                Package (0x02)
                {
                    0x0A, 
                    "BootMode"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "StartupOptionKeys"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BootDeviceListF12Option"
                }, 

                Package (0x02)
                {
                    0x64, 
                    "BootOrder"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "WiMAXAccess"
                }, 

                Package (0x02)
                {
                    0x0D, 
                    "GraphicsDevice"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "TXTFeature"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "VTdFeature"
                }, 

                Package (0x02)
                {
                    0x0F, 
                    "AMTControl"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "FingerprintPasswordAuthentication"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "FingerprintReaderAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "OsDetectionForSwitchableGraphics"
                }, 

                Package (0x02)
                {
                    0x0F, 
                    "ComputraceModuleActivation"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "PCIExpressPowerManagement"
                }, 

                Package (0x02)
                {
                    0x0F, 
                    "ATpModuleActivation"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "eSATAPortAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "HardwarePasswordManager"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "HyperThreadingTechnology"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "FnCtrlKeySwap"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BIOSPasswordAtReboot"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "OnByAcAttach"
                }, 

                Package (0x02)
                {
                    0x64, 
                    "NetworkBoot"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BootOrderLock"
                }, 

                Package (0x02)
                {
                    0x10, 
                    "USB30Mode"
                }, 

                Package (0x02)
                {
                    0x11, 
                    "ExpressCardSpeed"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "RapidStartTechnology"
                }, 

                Package (0x02)
                {
                    0x12, 
                    "KeyboardIllumination"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "IPv4NetworkStack"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "IPv6NetworkStack"
                }, 

                Package (0x02)
                {
                    0x13, 
                    "UefiPxeBootPriority"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "PhysicalPresenceForTpmProvision"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "PhysicalPresenceForTpmClear"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "SecureRollBackPrevention"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "SecureBoot"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "NfcAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BottomCoverTamperDetected"
                }, 

                Package (0x02)
                {
                    0x14, 
                    "DiscreteGFXPerfMode"
                }, 

                Package (0x02)
                {
                    0x16, 
                    "SmartConnectTechnology"
                }
            })
            Name (VSEL, Package (0x16)
            {
                Package (0x02)
                {
                    "Disable", 
                    "Enable"
                }, 

                Package (0x02)
                {
                    "Disable", 
                    "Automatic"
                }, 

                Package (0x03)
                {
                    "Active", 
                    "Inactive", 
                    "Disable"
                }, 

                Package (0x02)
                {
                    "Normal", 
                    "High"
                }, 

                Package (0x02)
                {
                    "Independent", 
                    "Synchronized"
                }, 

                Package (0x04)
                {
                    "LCD", 
                    "VGA", 
                    "Digital", 
                    "DockDisplay"
                }, 

                Package (0x03)
                {
                    "High", 
                    "Normal", 
                    "Silent"
                }, 

                Package (0x02)
                {
                    "Compatibility", 
                    "AHCI"
                }, 

                Package (0x02)
                {
                    "External", 
                    "InternalOnly"
                }, 

                Package (0x02)
                {
                    "MaximizePerformance", 
                    "Balanced"
                }, 

                Package (0x02)
                {
                    "Quick", 
                    "Diagnostics"
                }, 

                Package (0x0A)
                {
                    "Disable", 
                    "4", 
                    "5", 
                    "6", 
                    "7", 
                    "8", 
                    "9", 
                    "10", 
                    "11", 
                    "12"
                }, 

                Package (0x03)
                {
                    "Auto", 
                    "On", 
                    "Off"
                }, 

                Package (0x03)
                {
                    "IntegratedGfx", 
                    "DiscreteGfx", 
                    "SwitchableGfx"
                }, 

                Package (0x04)
                {
                    "Disable", 
                    "ACOnly", 
                    "ACandBattery", 
                    "Enable"
                }, 

                Package (0x03)
                {
                    "Disable", 
                    "Enable", 
                    "Disable"
                }, 

                Package (0x03)
                {
                    "Disable", 
                    "Enable", 
                    "Automatic"
                }, 

                Package (0x02)
                {
                    "Generation1", 
                    "Automatic"
                }, 

                Package (0x03)
                {
                    "ThinkLightOnly", 
                    "BacklightOnly", 
                    "Both"
                }, 

                Package (0x02)
                {
                    "IPv6First", 
                    "IPv4First"
                }, 

                Package (0x02)
                {
                    "Balanced", 
                    "HighPerformance"
                }, 

                Package (0x02)
                {
                    "Enable", 
                    "Disable"
                }
            })
            Name (VLST, Package (0x0F)
            {
                "HDD0", 
                "HDD1", 
                "HDD2", 
                "HDD3", 
                "HDD4", 
                "PCILAN", 
                "ATAPICD0", 
                "ATAPICD1", 
                "ATAPICD2", 
                "USBFDD", 
                "USBCD", 
                "USBHDD", 
                "OtherHDD", 
                "OtherCD", 
                "NODEV"
            })
            Name (PENC, Package (0x02)
            {
                "ascii", 
                "scancode"
            })
            Name (PKBD, Package (0x03)
            {
                "us", 
                "fr", 
                "gr"
            })
            Name (PTYP, Package (0x08)
            {
                "pap", 
                "pop", 
                "uhdp1", 
                "mhdp1", 
                "uhdp2", 
                "mhdp2", 
                "uhdp3", 
                "mhdp3"
            })
            Mutex(MWMI, 0)
            Name (PCFG, Buffer (0x18) {})
            Name (IBUF, Buffer (0x0100) {})
            Name (ILEN, 0x00)
            Name (PSTR, Buffer (0x81) {})
            Method (WQA0, 1, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                If ((\WMIS (0x00, Arg0) != 0x00))
                {
                    Release (MWMI)
                    Return ("")
                }

                Local0 = DerefOf (ITEM [\WITM])
                Local1 = DerefOf (Local0 [0x00])
                Local2 = DerefOf (Local0 [0x01])
                If ((Local1 < 0x64))
                {
                    Concatenate (Local2, ",", Local6)
                    Local3 = DerefOf (VSEL [Local1])
                    Concatenate (Local6, DerefOf (Local3 [\WSEL]), Local7)
                }
                Else
                {
                    Local3 = SizeOf (VLST)
                    If ((\WLS0 <= Local3))
                    {
                        Concatenate (Local2, ",", Local7)
                        Concatenate (Local7, DerefOf (VLST [\WLS0]), Local2)
                    }

                    If ((\WLS1 <= Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (VLST [\WLS1]), Local2)
                    }

                    If ((\WLS2 <= Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (VLST [\WLS2]), Local2)
                    }

                    If ((\WLS3 <= Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (VLST [\WLS3]), Local2)
                    }

                    If ((\WLS4 <= Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (VLST [\WLS4]), Local2)
                    }

                    If ((\WLS5 <= Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (VLST [\WLS5]), Local2)
                    }

                    If ((\WLS6 <= Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (VLST [\WLS6]), Local2)
                    }

                    If ((\WLS7 <= Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (VLST [\WLS7]), Local2)
                    }

                    If ((\WLS8 <= Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (VLST [\WLS8]), Local2)
                    }

                    If ((\WLS9 <= Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (VLST [\WLS9]), Local2)
                    }

                    If ((\WLSA <= Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (VLST [\WLSA]), Local2)
                    }

                    If ((\WLSB <= Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (VLST [\WLSB]), Local2)
                    }

                    If ((\WLSC <= Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (VLST [\WLSC]), Local2)
                    }

                    If ((\WLSD <= Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (VLST [\WLSD]), Local2)
                    }

                    Local7 = Local2
                }

                Release (MWMI)
                Return (Local7)
            }

            Method (WMA1, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                If ((SizeOf (Arg2) == 0x00))
                {
                    Local0 = 0x02
                }
                Else
                {
                    Local0 = CARG (Arg2)
                    If ((Local0 == 0x00))
                    {
                        Local0 = WSET (ITEM, VSEL)
                        If ((Local0 == 0x00))
                        {
                            Local0 = \WMIS (0x01, 0x00)
                        }
                    }
                }

                Release (MWMI)
                Return (DerefOf (RETN [Local0]))
            }

            Method (WMA2, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                Local0 = CARG (Arg2)
                If ((Local0 == 0x00))
                {
                    If ((ILEN != 0x00))
                    {
                        Local0 = CPAS (IBUF, 0x00)
                    }

                    If ((Local0 == 0x00))
                    {
                        Local0 = \WMIS (0x02, 0x00)
                    }
                }

                Release (MWMI)
                Return (DerefOf (RETN [Local0]))
            }

            Method (WMA3, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                Local0 = CARG (Arg2)
                If ((Local0 == 0x00))
                {
                    If ((ILEN != 0x00))
                    {
                        Local0 = CPAS (IBUF, 0x00)
                    }

                    If ((Local0 == 0x00))
                    {
                        Local0 = \WMIS (0x03, 0x00)
                    }
                }

                Release (MWMI)
                Return (DerefOf (RETN [Local0]))
            }

            Method (WMA4, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                Local0 = CARG (Arg2)
                If ((Local0 == 0x00))
                {
                    If ((ILEN != 0x00))
                    {
                        Local0 = CPAS (IBUF, 0x00)
                    }

                    If ((Local0 == 0x00))
                    {
                        Local0 = \WMIS (0x04, 0x00)
                    }
                }

                Release (MWMI)
                Return (DerefOf (RETN [Local0]))
            }

            Method (WQA5, 1, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                Local0 = \WMIS (0x05, 0x00)
                PCFG [0x00] = \WSPM
                PCFG [0x04] = \WSPS
                PCFG [0x08] = \WSMN
                PCFG [0x0C] = \WSMX
                PCFG [0x10] = \WSEN
                PCFG [0x14] = \WSKB
                Release (MWMI)
                Return (PCFG)
            }

            Method (WMA6, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                If ((SizeOf (Arg2) == 0x00))
                {
                    Local0 = 0x02
                }
                Else
                {
                    Local0 = CARG (Arg2)
                    If ((Local0 == 0x00))
                    {
                        If ((ILEN != 0x00))
                        {
                            Local0 = SPAS (IBUF)
                        }

                        If ((Local0 == 0x00))
                        {
                            Local0 = \WMIS (0x06, 0x00)
                        }
                    }
                }

                Release (MWMI)
                Return (DerefOf (RETN [Local0]))
            }

            Method (WMA7, 3, NotSerialized)
            {
                If ((SizeOf (Arg2) == 0x00))
                {
                    Return ("")
                }

                Local0 = CARG (Arg2)
                If ((Local0 == 0x00))
                {
                    Local1 = GITM (IBUF, ITEM)
                    If ((Local1 == Ones))
                    {
                        Return ("")
                    }

                    Local0 = DerefOf (ITEM [Local1])
                    Local1 = DerefOf (Local0 [0x00])
                    If ((Local1 < 0x64))
                    {
                        Local3 = DerefOf (VSEL [Local1])
                        Local2 = DerefOf (Local3 [0x00])
                        Local4 = SizeOf (Local3)
                        Local5 = 0x01
                        While ((Local5 < Local4))
                        {
                            Local6 = DerefOf (Local3 [Local5])
                            If ((SizeOf (Local6) != 0x00))
                            {
                                Concatenate (Local2, ",", Local7)
                                Concatenate (Local7, Local6, Local2)
                            }

                            Local5++
                        }
                    }
                    Else
                    {
                        Local2 = DerefOf (VLST [0x00])
                        Local4 = SizeOf (VLST)
                        Local5 = 0x01
                        While ((Local5 < Local4))
                        {
                            Local6 = DerefOf (VLST [Local5])
                            Concatenate (Local2, ",", Local7)
                            Concatenate (Local7, Local6, Local2)
                            Local5++
                        }
                    }
                }

                Return (Local2)
            }

            Method (CARG, 1, NotSerialized)
            {
                Local0 = SizeOf (Arg0)
                If ((Local0 == 0x00))
                {
                    IBUF = 0x00
                    ILEN = 0x00
                    Return (0x00)
                }

                If ((ObjectType (Arg0) != 0x02))
                {
                    Return (0x02)
                }

                If ((Local0 >= 0xFF))
                {
                    Return (0x02)
                }

                IBUF = Arg0
                Local0--
                Local1 = DerefOf (IBUF [Local0])
                If (((Local1 == 0x3B) || (Local1 == 0x2A)))
                {
                    IBUF [Local0] = 0x00
                    ILEN = Local0
                }
                Else
                {
                    ILEN = SizeOf (Arg0)
                }

                Return (0x00)
            }

            Method (SCMP, 3, NotSerialized)
            {
                Local0 = SizeOf (Arg0)
                If ((Local0 == 0x00))
                {
                    Return (0x00)
                }

                Local0++
                Name (STR1, Buffer (Local0) {})
                STR1 = Arg0
                Local0--
                Local1 = 0x00
                Local2 = Arg2
                While ((Local1 < Local0))
                {
                    Local3 = DerefOf (STR1 [Local1])
                    Local4 = DerefOf (Arg1 [Local2])
                    If ((Local3 != Local4))
                    {
                        Return (0x00)
                    }

                    Local1++
                    Local2++
                }

                Local4 = DerefOf (Arg1 [Local2])
                If ((Local4 == 0x00))
                {
                    Return (0x01)
                }

                If (((Local4 == 0x2C) || (Local4 == 0x3A)))
                {
                    Return (0x01)
                }

                Return (0x00)
            }

            Method (GITM, 2, NotSerialized)
            {
                Local0 = 0x00
                Local1 = SizeOf (Arg1)
                While ((Local0 < Local1))
                {
                    Local3 = DerefOf (DerefOf (Arg1 [Local0]) [0x01])
                    If (SCMP (Local3, Arg0, 0x00))
                    {
                        Return (Local0)
                    }

                    Local0++
                }

                Return (Ones)
            }

            Method (GSEL, 3, NotSerialized)
            {
                Local0 = 0x00
                Local1 = SizeOf (Arg0)
                While ((Local0 < Local1))
                {
                    Local2 = DerefOf (Arg0 [Local0])
                    If (SCMP (Local2, Arg1, Arg2))
                    {
                        Return (Local0)
                    }

                    Local0++
                }

                Return (Ones)
            }

            Method (SLEN, 2, NotSerialized)
            {
                Local0 = DerefOf (Arg0 [Arg1])
                Return (SizeOf (Local0))
            }

            Method (CLRP, 0, NotSerialized)
            {
                \WPAS = 0x00
                \WPNW = 0x00
            }

            Method (GPAS, 2, NotSerialized)
            {
                Local0 = Arg1
                Local1 = 0x00
                While ((Local1 <= 0x80))
                {
                    Local2 = DerefOf (Arg0 [Local0])
                    If (((Local2 == 0x2C) || (Local2 == 0x00)))
                    {
                        PSTR [Local1] = 0x00
                        Return (Local1)
                    }

                    PSTR [Local1] = Local2
                    Local0++
                    Local1++
                }

                PSTR [Local1] = 0x00
                Return (Ones)
            }

            Method (CPAS, 2, NotSerialized)
            {
                CLRP ()
                Local0 = Arg1
                Local1 = GPAS (Arg0, Local0)
                If ((Local1 == Ones))
                {
                    Return (0x02)
                }

                If ((Local1 == 0x00))
                {
                    Return (0x02)
                }

                \WPAS = PSTR
                Local0 += Local1
                Local0++
                Local6 = GSEL (PENC, Arg0, Local0)
                If ((Local6 == Ones))
                {
                    Return (0x02)
                }

                \WENC = Local6
                If ((Local6 == 0x00))
                {
                    Local0 += SLEN (PENC, 0x00)
                    If ((DerefOf (Arg0 [Local0]) != 0x2C))
                    {
                        Return (0x02)
                    }

                    Local0++
                    Local6 = GSEL (PKBD, Arg0, Local0)
                    If ((Local6 == Ones))
                    {
                        Return (0x02)
                    }

                    \WKBD = Local6
                }

                Return (0x00)
            }

            Method (SPAS, 1, NotSerialized)
            {
                CLRP ()
                Local6 = GSEL (PTYP, Arg0, 0x00)
                If ((Local6 == Ones))
                {
                    Return (0x02)
                }

                \WPTY = Local6
                Local0 = SLEN (PTYP, Local6)
                If ((DerefOf (Arg0 [Local0]) != 0x2C))
                {
                    Return (0x02)
                }

                Local0++
                Local1 = GPAS (Arg0, Local0)
                If (((Local1 == Ones) || (Local1 == 0x00)))
                {
                    Return (0x02)
                }

                \WPAS = PSTR
                Local0 += Local1
                If ((DerefOf (Arg0 [Local0]) != 0x2C))
                {
                    Return (0x02)
                }

                Local0++
                Local1 = GPAS (Arg0, Local0)
                If ((Local1 == Ones))
                {
                    Return (0x02)
                }

                If ((Local1 == 0x00))
                {
                    PSTR = 0x00
                }

                \WPNW = PSTR
                Local0 += Local1
                Local0++
                Local6 = GSEL (PENC, Arg0, Local0)
                If ((Local6 == Ones))
                {
                    Return (0x02)
                }

                \WENC = Local6
                If ((Local6 == 0x00))
                {
                    Local0 += SLEN (PENC, 0x00)
                    If ((DerefOf (Arg0 [Local0]) != 0x2C))
                    {
                        Return (0x02)
                    }

                    Local0++
                    Local6 = GSEL (PKBD, Arg0, Local0)
                    If ((Local6 == Ones))
                    {
                        Return (0x02)
                    }

                    \WKBD = Local6
                }

                Return (0x00)
            }

            Method (WSET, 2, NotSerialized)
            {
                Local0 = ILEN
                Local0++
                Local1 = GITM (IBUF, Arg0)
                If ((Local1 == Ones))
                {
                    Return (0x02)
                }

                \WITM = Local1
                Local3 = DerefOf (Arg0 [Local1])
                Local4 = DerefOf (Local3 [0x01])
                Local2 = SizeOf (Local4)
                Local2++
                Local4 = DerefOf (Local3 [0x00])
                If ((Local4 < 0x64))
                {
                    Local5 = DerefOf (Arg1 [Local4])
                    Local6 = GSEL (Local5, IBUF, Local2)
                    If ((Local6 == Ones))
                    {
                        Return (0x02)
                    }

                    \WSEL = Local6
                    Local2 += SLEN (Local5, Local6)
                    Local4 = DerefOf (IBUF [Local2])
                }
                Else
                {
                    \WLS0 = 0x3F
                    \WLS1 = 0x3F
                    \WLS2 = 0x3F
                    \WLS3 = 0x3F
                    \WLS4 = 0x3F
                    \WLS5 = 0x3F
                    \WLS6 = 0x3F
                    \WLS7 = 0x3F
                    \WLS8 = 0x3F
                    \WLS9 = 0x3F
                    \WLSA = 0x3F
                    \WLSB = 0x3F
                    \WLSC = 0x3F
                    \WLSD = 0x3F
                    Local6 = GSEL (VLST, IBUF, Local2)
                    If ((Local6 == Ones))
                    {
                        Return (0x02)
                    }

                    \WLS0 = Local6
                    Local2 += SLEN (VLST, Local6)
                    Local4 = DerefOf (IBUF [Local2])
                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VLST, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        \WLS1 = Local6
                        Local2 += SLEN (VLST, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }

                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VLST, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        \WLS2 = Local6
                        Local2 += SLEN (VLST, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }

                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VLST, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        \WLS3 = Local6
                        Local2 += SLEN (VLST, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }

                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VLST, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        \WLS4 = Local6
                        Local2 += SLEN (VLST, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }

                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VLST, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        \WLS5 = Local6
                        Local2 += SLEN (VLST, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }

                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VLST, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        \WLS6 = Local6
                        Local2 += SLEN (VLST, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }

                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VLST, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        \WLS7 = Local6
                        Local2 += SLEN (VLST, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }

                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VLST, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        \WLS8 = Local6
                        Local2 += SLEN (VLST, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }

                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VLST, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        \WLS9 = Local6
                        Local2 += SLEN (VLST, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }

                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VLST, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        \WLSA = Local6
                        Local2 += SLEN (VLST, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }

                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VLST, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        \WLSB = Local6
                        Local2 += SLEN (VLST, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }

                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VLST, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        \WLSC = Local6
                        Local2 += SLEN (VLST, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }

                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VLST, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        \WLSD = Local6
                        Local2 += SLEN (VLST, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }
                }

                If (((Local4 == 0x2C) && (Local2 < Local0)))
                {
                    Local2++
                    Local0 = CPAS (IBUF, Local2)
                    If ((Local0 != 0x00))
                    {
                        Return (Local0)
                    }
                }

                Return (0x00)
            }

            Name (WQBA, Buffer (0x089D)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,
                /* 0008 */  0x8D, 0x08, 0x00, 0x00, 0xF2, 0x36, 0x00, 0x00,
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,
                /* 0018 */  0xA8, 0xC9, 0x9A, 0x00, 0x01, 0x06, 0x18, 0x42,
                /* 0020 */  0x10, 0x13, 0x10, 0x0A, 0x0D, 0x21, 0x02, 0x0B,
                /* 0028 */  0x83, 0x50, 0x4C, 0x18, 0x14, 0xA0, 0x45, 0x41,
                /* 0030 */  0xC8, 0x05, 0x14, 0x95, 0x02, 0x21, 0xC3, 0x02,
                /* 0038 */  0x14, 0x0B, 0x70, 0x2E, 0x40, 0xBA, 0x00, 0xE5,
                /* 0040 */  0x28, 0x72, 0x0C, 0x22, 0x02, 0xF7, 0xEF, 0x0F,
                /* 0048 */  0x31, 0x0E, 0x88, 0x14, 0x40, 0x48, 0x26, 0x84,
                /* 0050 */  0x44, 0x00, 0x53, 0x21, 0x70, 0x84, 0xA0, 0x5F,
                /* 0058 */  0x01, 0x08, 0x1D, 0xA2, 0xC9, 0xA0, 0x00, 0xA7,
                /* 0060 */  0x08, 0x82, 0xB4, 0x65, 0x01, 0xBA, 0x05, 0xF8,
                /* 0068 */  0x16, 0xA0, 0x1D, 0x42, 0x68, 0x15, 0x0A, 0x30,
                /* 0070 */  0x29, 0xC0, 0x27, 0x98, 0x2C, 0x0A, 0x90, 0x0D,
                /* 0078 */  0x26, 0xDB, 0x70, 0x64, 0x18, 0x4C, 0xE4, 0x18,
                /* 0080 */  0x50, 0x62, 0xC6, 0x80, 0xD2, 0x39, 0x05, 0xD9,
                /* 0088 */  0x04, 0x16, 0x74, 0xA1, 0x28, 0x9A, 0x46, 0x94,
                /* 0090 */  0x04, 0x07, 0x75, 0x0C, 0x11, 0x82, 0x97, 0x2B,
                /* 0098 */  0x40, 0xF2, 0x04, 0xA4, 0x79, 0x5E, 0xB2, 0x3E,
                /* 00A0 */  0x08, 0x0D, 0x81, 0x8D, 0x80, 0x47, 0x91, 0x00,
                /* 00A8 */  0xC2, 0x62, 0x2C, 0x53, 0xE2, 0x61, 0x50, 0x1E,
                /* 00B0 */  0x40, 0x24, 0x67, 0xA8, 0x28, 0x60, 0x7B, 0x9D,
                /* 00B8 */  0x88, 0x86, 0x75, 0x9C, 0x4C, 0x12, 0x1C, 0x6A,
                /* 00C0 */  0x94, 0x96, 0x28, 0xC0, 0xFC, 0xC8, 0x34, 0x91,
                /* 00C8 */  0x63, 0x6B, 0x7A, 0xC4, 0x82, 0x64, 0xD2, 0x86,
                /* 00D0 */  0x82, 0x1A, 0xBA, 0xA7, 0x75, 0x52, 0x9E, 0x68,
                /* 00D8 */  0xC4, 0x83, 0x32, 0x4C, 0x02, 0x8F, 0x82, 0xA1,
                /* 00E0 */  0x71, 0x82, 0xB2, 0x20, 0xE4, 0x60, 0xA0, 0x28,
                /* 00E8 */  0xC0, 0x93, 0xF0, 0x1C, 0x8B, 0x17, 0x20, 0x7C,
                /* 00F0 */  0xC6, 0xE4, 0x28, 0x10, 0x23, 0x81, 0x8F, 0x04,
                /* 00F8 */  0x1E, 0xCD, 0x31, 0x63, 0x81, 0xC2, 0x05, 0x3C,
                /* 0100 */  0x9F, 0x63, 0x88, 0x1C, 0xF7, 0x50, 0x63, 0x1C,
                /* 0108 */  0x45, 0xE4, 0x04, 0xEF, 0x00, 0x51, 0x8C, 0x56,
                /* 0110 */  0xD0, 0xBC, 0x85, 0x18, 0x2C, 0x9A, 0xC1, 0x7A,
                /* 0118 */  0x06, 0x27, 0x83, 0x4E, 0xF0, 0xFF, 0x3F, 0x02,
                /* 0120 */  0x2E, 0x03, 0x42, 0x1E, 0x05, 0x58, 0x1D, 0x94,
                /* 0128 */  0xA6, 0x61, 0x82, 0xEE, 0x05, 0xBC, 0x1A, 0x1A,
                /* 0130 */  0x13, 0xA0, 0x11, 0x43, 0xCA, 0x04, 0x38, 0xBB,
                /* 0138 */  0x2F, 0x68, 0x46, 0x6D, 0x09, 0x30, 0x27, 0x40,
                /* 0140 */  0x9B, 0x00, 0x6F, 0x08, 0x42, 0x39, 0xCF, 0x28,
                /* 0148 */  0xC7, 0x72, 0x8A, 0x51, 0x1E, 0x06, 0x62, 0xBE,
                /* 0150 */  0x0C, 0x04, 0x8D, 0x12, 0x23, 0xE6, 0xB9, 0xC4,
                /* 0158 */  0x35, 0x6C, 0x84, 0x18, 0x21, 0x4F, 0x21, 0x50,
                /* 0160 */  0xDC, 0xF6, 0x07, 0x41, 0x06, 0x8D, 0x1B, 0xBD,
                /* 0168 */  0x4F, 0x0B, 0x67, 0x75, 0x02, 0x47, 0xFF, 0xA4,
                /* 0170 */  0x60, 0x02, 0x4F, 0xF9, 0xC0, 0x9E, 0x0D, 0x4E,
                /* 0178 */  0xE0, 0x58, 0xA3, 0xC6, 0x38, 0x95, 0x04, 0x8E,
                /* 0180 */  0xFD, 0x80, 0x90, 0x06, 0x10, 0x45, 0x82, 0x47,
                /* 0188 */  0x9D, 0x16, 0x7C, 0x2E, 0xF0, 0xD0, 0x0E, 0xDA,
                /* 0190 */  0x73, 0x3C, 0x81, 0x20, 0x87, 0x70, 0x04, 0x4F,
                /* 0198 */  0x0C, 0x0F, 0x04, 0x1E, 0x03, 0xBB, 0x29, 0xF8,
                /* 01A0 */  0x08, 0xE0, 0x13, 0x02, 0xDE, 0x35, 0xA0, 0xAE,
                /* 01A8 */  0x06, 0x0F, 0x06, 0x6C, 0xD0, 0xE1, 0x30, 0xE3,
                /* 01B0 */  0xF5, 0xF0, 0xC3, 0x9D, 0xC0, 0x49, 0x3E, 0x60,
                /* 01B8 */  0xF0, 0xC3, 0x86, 0x07, 0x87, 0x9B, 0xE7, 0xC9,
                /* 01C0 */  0x1C, 0x59, 0xA9, 0x02, 0xCC, 0x1E, 0x0E, 0x74,
                /* 01C8 */  0x90, 0xF0, 0x69, 0x83, 0x9D, 0x01, 0x30, 0xF2,
                /* 01D0 */  0x07, 0x81, 0x1A, 0x99, 0xA1, 0x3D, 0xEE, 0x97,
                /* 01D8 */  0x0E, 0x43, 0x3E, 0x27, 0x1C, 0x16, 0x13, 0x7B,
                /* 01E0 */  0xEA, 0xA0, 0xE3, 0x01, 0xFF, 0x65, 0xE4, 0x39,
                /* 01E8 */  0xC3, 0xD3, 0xF7, 0x7C, 0x4D, 0x30, 0xEC, 0xC0,
                /* 01F0 */  0xD1, 0x03, 0x31, 0xF4, 0xC3, 0xC6, 0x61, 0x9C,
                /* 01F8 */  0x86, 0xEF, 0x1F, 0x3E, 0x2F, 0xC0, 0x38, 0x05,
                /* 0200 */  0x78, 0xE4, 0xFE, 0xFF, 0x1F, 0x52, 0x7C, 0x9A,
                /* 0208 */  0xE0, 0x47, 0x0B, 0x9F, 0x26, 0xD8, 0xF5, 0xE0,
                /* 0210 */  0x34, 0x9E, 0x03, 0x3C, 0x9C, 0xB3, 0xF2, 0x61,
                /* 0218 */  0x02, 0x6C, 0xF7, 0x13, 0x36, 0xA2, 0x77, 0x0B,
                /* 0220 */  0x8F, 0x06, 0x7B, 0x0A, 0x00, 0xDF, 0xF9, 0x05,
                /* 0228 */  0x9C, 0x77, 0x0D, 0x36, 0x58, 0x18, 0xE7, 0x17,
                /* 0230 */  0xE0, 0x71, 0x42, 0xF0, 0x10, 0xF8, 0x41, 0xC2,
                /* 0238 */  0x43, 0xE0, 0x03, 0x78, 0xFE, 0x38, 0x43, 0x2B,
                /* 0240 */  0x9D, 0x17, 0x72, 0x60, 0xF0, 0xCE, 0x39, 0x30,
                /* 0248 */  0x46, 0xC1, 0xF3, 0x3C, 0x36, 0x4C, 0xA0, 0x20,
                /* 0250 */  0xAF, 0x01, 0x85, 0x7A, 0x16, 0x50, 0x18, 0x9F,
                /* 0258 */  0x6A, 0x80, 0xD7, 0xFF, 0xFF, 0x54, 0x03, 0x5C,
                /* 0260 */  0x0E, 0x07, 0xB8, 0x93, 0x03, 0xDC, 0x7B, 0x01,
                /* 0268 */  0xBB, 0x38, 0x3C, 0xD7, 0xC0, 0x15, 0x7D, 0xAE,
                /* 0270 */  0x81, 0x7A, 0x6F, 0x29, 0x6E, 0x8C, 0xBA, 0xC6,
                /* 0278 */  0x04, 0x79, 0x14, 0x78, 0xA4, 0x89, 0xF2, 0x3C,
                /* 0280 */  0xF3, 0x2E, 0x13, 0xE1, 0xD9, 0xC6, 0xD7, 0x1A,
                /* 0288 */  0x4F, 0x21, 0x8E, 0xAF, 0x35, 0x46, 0x7C, 0x99,
                /* 0290 */  0x78, 0xB7, 0x31, 0xEE, 0xC1, 0x3D, 0xD6, 0x3C,
                /* 0298 */  0xE4, 0x18, 0xE4, 0x68, 0x22, 0xBC, 0x18, 0x04,
                /* 02A0 */  0x7C, 0xBC, 0xF1, 0xB1, 0x06, 0xBC, 0x62, 0x5E,
                /* 02A8 */  0x28, 0xB2, 0x70, 0xAC, 0x01, 0x34, 0xFE, 0xFF,
                /* 02B0 */  0x8F, 0x35, 0xC0, 0x0D, 0xEB, 0x01, 0x05, 0x7C,
                /* 02B8 */  0x47, 0x06, 0x76, 0x43, 0x81, 0x77, 0x42, 0x01,
                /* 02C0 */  0xFC, 0x24, 0x7E, 0x01, 0xE8, 0xC8, 0xE1, 0xB4,
                /* 02C8 */  0x20, 0xB2, 0xF1, 0x06, 0xF0, 0x29, 0x80, 0xAA,
                /* 02D0 */  0x01, 0xD2, 0x34, 0x61, 0x13, 0x4C, 0x4F, 0x2E,
                /* 02D8 */  0x78, 0x1F, 0x09, 0x9C, 0x9B, 0x44, 0xC9, 0x87,
                /* 02E0 */  0x45, 0xE1, 0x9C, 0xF5, 0x20, 0x42, 0x41, 0x0C,
                /* 02E8 */  0xE8, 0x20, 0xC7, 0x09, 0xF4, 0x19, 0xC5, 0x07,
                /* 02F0 */  0x91, 0x13, 0x7D, 0x22, 0xF4, 0xA0, 0x3C, 0x8C,
                /* 02F8 */  0x77, 0x14, 0x76, 0x02, 0xF1, 0x61, 0xC2, 0x63,
                /* 0300 */  0xF7, 0x31, 0x81, 0xFF, 0x63, 0x3C, 0x1B, 0xA3,
                /* 0308 */  0x5B, 0x0D, 0x86, 0xFE, 0xFF, 0xE7, 0x14, 0x0E,
                /* 0310 */  0xE6, 0x83, 0x08, 0x27, 0xA8, 0xEB, 0x26, 0x01,
                /* 0318 */  0x32, 0x7D, 0x47, 0x05, 0x50, 0x00, 0xF9, 0x5E,
                /* 0320 */  0xE0, 0x73, 0xC0, 0xB3, 0x01, 0x1B, 0xC3, 0xA3,
                /* 0328 */  0x80, 0xD1, 0x8C, 0xCE, 0xC3, 0x4F, 0x16, 0x15,
                /* 0330 */  0x77, 0xB2, 0x14, 0xC4, 0x93, 0x75, 0x94, 0xC9,
                /* 0338 */  0xA2, 0x67, 0xE2, 0x7B, 0x85, 0x67, 0xF4, 0xA6,
                /* 0340 */  0xE5, 0x39, 0x7A, 0xC2, 0xBE, 0x87, 0xC0, 0x3A,
                /* 0348 */  0x0C, 0x84, 0x7C, 0x30, 0xF0, 0x34, 0x0C, 0xE7,
                /* 0350 */  0xC9, 0x72, 0x38, 0x4F, 0x96, 0x8F, 0xC5, 0xD7,
                /* 0358 */  0x10, 0xF0, 0x09, 0x9C, 0x2D, 0xC8, 0xE1, 0x31,
                /* 0360 */  0xB1, 0x46, 0x45, 0xAF, 0x42, 0x1E, 0x1E, 0xBF,
                /* 0368 */  0x1C, 0x78, 0x3E, 0xCF, 0x08, 0x47, 0xF9, 0x24,
                /* 0370 */  0x81, 0xC3, 0x78, 0x26, 0xF1, 0x10, 0x7D, 0x2B,
                /* 0378 */  0x82, 0x35, 0x91, 0x93, 0xF6, 0x6D, 0xE1, 0x64,
                /* 0380 */  0x83, 0xBE, 0x9E, 0x61, 0x6E, 0x45, 0xB0, 0xFF,
                /* 0388 */  0xFF, 0xB7, 0x22, 0x38, 0x17, 0x34, 0x98, 0x99,
                /* 0390 */  0xEE, 0x55, 0xA8, 0x58, 0xF7, 0x2A, 0x40, 0xEC,
                /* 0398 */  0xB0, 0x5E, 0x7B, 0x7C, 0xB0, 0x82, 0x7B, 0xAF,
                /* 03A0 */  0x82, 0x7B, 0xA9, 0x7A, 0x56, 0x38, 0xC6, 0xF0,
                /* 03A8 */  0x0F, 0x53, 0x31, 0x4E, 0xE9, 0xB5, 0xD3, 0x40,
                /* 03B0 */  0x61, 0xA2, 0xC4, 0x7B, 0xAF, 0xF2, 0x18, 0xDF,
                /* 03B8 */  0xAB, 0xD8, 0x15, 0x2A, 0x4C, 0xAC, 0x97, 0x2B,
                /* 03C0 */  0xA3, 0xBE, 0x4E, 0x84, 0x0B, 0x14, 0x24, 0xD2,
                /* 03C8 */  0xAB, 0x55, 0x94, 0xC8, 0xF1, 0x0D, 0xF9, 0x5E,
                /* 03D0 */  0x05, 0x5E, 0x39, 0xF7, 0x2A, 0x90, 0xFD, 0xFF,
                /* 03D8 */  0xEF, 0x55, 0x80, 0x79, 0xB4, 0xF7, 0x2A, 0x30,
                /* 03E0 */  0x5E, 0x1B, 0xD8, 0x0D, 0x09, 0x16, 0xD0, 0x8B,
                /* 03E8 */  0x15, 0x60, 0x28, 0xF3, 0xC5, 0x8A, 0xE6, 0xBD,
                /* 03F0 */  0x58, 0x21, 0xFE, 0xFF, 0xE7, 0x12, 0xA6, 0xE7,
                /* 03F8 */  0x62, 0x45, 0xE6, 0x09, 0xFF, 0x66, 0x05, 0x70,
                /* 0400 */  0xFA, 0xFF, 0x7F, 0xB3, 0x02, 0x8C, 0xDD, 0x8B,
                /* 0408 */  0x30, 0x47, 0x2B, 0x78, 0x29, 0x6F, 0x56, 0x34,
                /* 0410 */  0xCE, 0x32, 0x14, 0x70, 0x41, 0x14, 0xC6, 0x37,
                /* 0418 */  0x2B, 0xC0, 0xD1, 0x75, 0x05, 0x37, 0x64, 0xB8,
                /* 0420 */  0x60, 0x51, 0x82, 0xF9, 0x10, 0xE2, 0xE9, 0x1C,
                /* 0428 */  0xF1, 0x43, 0xC2, 0x4B, 0xC0, 0x63, 0x8E, 0x07,
                /* 0430 */  0xFC, 0x40, 0xE0, 0xCB, 0x15, 0x98, 0xFE, 0xFF,
                /* 0438 */  0x04, 0x3E, 0xF9, 0x9E, 0xE5, 0xDB, 0xD4, 0x7B,
                /* 0440 */  0x2F, 0x3F, 0x60, 0xBD, 0x57, 0xF9, 0xF0, 0x1B,
                /* 0448 */  0xEB, 0x9D, 0xE1, 0xE5, 0xCA, 0x23, 0x89, 0x72,
                /* 0450 */  0x12, 0xA1, 0x7C, 0xB7, 0x7A, 0xAF, 0x32, 0x4A,
                /* 0458 */  0xC4, 0x17, 0x62, 0x9F, 0x82, 0x0D, 0x6D, 0x94,
                /* 0460 */  0xA7, 0x8A, 0xE8, 0xC6, 0x7B, 0xB9, 0x02, 0xAF,
                /* 0468 */  0xA4, 0xCB, 0x15, 0x40, 0x93, 0xE1, 0xBF, 0x5C,
                /* 0470 */  0x81, 0xEF, 0xE6, 0x80, 0xBD, 0x26, 0xC1, 0xF9,
                /* 0478 */  0xFF, 0x5F, 0x93, 0xF8, 0xF5, 0x0A, 0xF0, 0x93,
                /* 0480 */  0xFD, 0x7A, 0x45, 0x73, 0x5F, 0xAF, 0x50, 0xA2,
                /* 0488 */  0x20, 0xA4, 0x08, 0x48, 0x33, 0x05, 0xCF, 0xFD,
                /* 0490 */  0x0A, 0xE0, 0xC4, 0xFF, 0xFF, 0x7E, 0x05, 0x58,
                /* 0498 */  0x0E, 0x77, 0xBF, 0x02, 0x7A, 0xB7, 0x23, 0xF0,
                /* 04A0 */  0xA2, 0xBC, 0x1D, 0x61, 0xAF, 0x58, 0xF8, 0x8C,
                /* 04A8 */  0x57, 0x2C, 0x1A, 0x66, 0x25, 0x8A, 0xB7, 0x26,
                /* 04B0 */  0x0A, 0xE3, 0x2B, 0x16, 0x30, 0xF9, 0xFF, 0x5F,
                /* 04B8 */  0xB1, 0x80, 0xD9, 0x41, 0x14, 0x37, 0x6A, 0xB8,
                /* 04C0 */  0x17, 0x27, 0xDF, 0x7A, 0x3C, 0xDF, 0x88, 0xBE,
                /* 04C8 */  0xC3, 0x60, 0x4E, 0x58, 0x30, 0x6E, 0x58, 0xF0,
                /* 04D0 */  0x87, 0xF4, 0x30, 0xEC, 0x93, 0xC4, 0x3B, 0x96,
                /* 04D8 */  0x8F, 0x56, 0x06, 0x79, 0x03, 0x7E, 0xB2, 0x7A,
                /* 04E0 */  0xB0, 0x8A, 0x62, 0x84, 0x80, 0xC7, 0xF3, 0x2E,
                /* 04E8 */  0xEC, 0xA3, 0xD5, 0x9B, 0x96, 0x51, 0x62, 0xC7,
                /* 04F0 */  0xF2, 0x85, 0xEA, 0x59, 0xCB, 0xD7, 0x2C, 0x43,
                /* 04F8 */  0xC4, 0x7D, 0x20, 0xF6, 0x0D, 0x0B, 0xB0, 0xFD,
                /* 0500 */  0xFF, 0xBF, 0x61, 0x01, 0x8E, 0x2E, 0x0E, 0xFC,
                /* 0508 */  0xE0, 0x80, 0xBD, 0x61, 0x01, 0x3E, 0x67, 0x0A,
                /* 0510 */  0x9E, 0x1B, 0x16, 0xB0, 0xF9, 0xFF, 0xDF, 0xB0,
                /* 0518 */  0x00, 0xFE, 0xFF, 0xFF, 0x6F, 0x58, 0xC0, 0xE1,
                /* 0520 */  0x76, 0x85, 0xBD, 0x65, 0x61, 0x6F, 0x2F, 0x64,
                /* 0528 */  0x15, 0x34, 0xD4, 0x4A, 0x14, 0xFC, 0x7B, 0x65,
                /* 0530 */  0x18, 0x7A, 0xC3, 0x02, 0x1C, 0x8D, 0xDB, 0xA3,
                /* 0538 */  0x06, 0xC7, 0xD9, 0xE0, 0x49, 0x02, 0x73, 0xAE,
                /* 0540 */  0xC6, 0xCD, 0xE6, 0xE0, 0x02, 0x47, 0xE8, 0x1D,
                /* 0548 */  0x54, 0x73, 0x67, 0x97, 0x14, 0x18, 0xB7, 0x2C,
                /* 0550 */  0xB8, 0x97, 0xAA, 0x87, 0x86, 0x28, 0x07, 0xF1,
                /* 0558 */  0x2A, 0xFC, 0x60, 0xF5, 0x28, 0x75, 0x64, 0x8F,
                /* 0560 */  0x57, 0x4F, 0xC3, 0x3E, 0x66, 0xF9, 0x96, 0x65,
                /* 0568 */  0xA8, 0x08, 0x6F, 0x59, 0xEC, 0x0C, 0x11, 0x2F,
                /* 0570 */  0x56, 0x94, 0x10, 0xEF, 0x15, 0xA1, 0x7D, 0xE7,
                /* 0578 */  0x32, 0xF8, 0xA3, 0xB1, 0x51, 0x83, 0xBE, 0x1C,
                /* 0580 */  0xBF, 0x65, 0xC1, 0xFB, 0xFF, 0xDF, 0xB2, 0xE0,
                /* 0588 */  0x8B, 0xFC, 0xAB, 0xE8, 0x44, 0xE0, 0x5B, 0x16,
                /* 0590 */  0xC0, 0x8F, 0x60, 0x10, 0x72, 0x32, 0x70, 0xF4,
                /* 0598 */  0x79, 0x01, 0x3F, 0x80, 0x87, 0x11, 0x0F, 0x89,
                /* 05A0 */  0x05, 0x18, 0x38, 0xBD, 0x2F, 0xF9, 0x4C, 0xC1,
                /* 05A8 */  0x0F, 0x18, 0x3E, 0x53, 0xB0, 0xEB, 0x41, 0xF4,
                /* 05B0 */  0xC7, 0x00, 0x9F, 0x4B, 0x30, 0x83, 0x03, 0xFF,
                /* 05B8 */  0xB5, 0xE2, 0xD0, 0x3D, 0x8A, 0xD7, 0x07, 0x13,
                /* 05C0 */  0x78, 0x70, 0xFC, 0xFF, 0x3F, 0x38, 0xB8, 0x77,
                /* 05C8 */  0x86, 0x23, 0xF2, 0x1D, 0xC6, 0x83, 0x03, 0xDB,
                /* 05D0 */  0x41, 0x00, 0x38, 0x0C, 0x0E, 0x1F, 0x6A, 0x70,
                /* 05D8 */  0xE8, 0xF1, 0x18, 0x38, 0xA4, 0xCF, 0x63, 0xEC,
                /* 05E0 */  0xC2, 0xF0, 0x90, 0xE3, 0xA1, 0x81, 0x0D, 0xD0,
                /* 05E8 */  0x43, 0x03, 0x96, 0x93, 0x78, 0x0A, 0x39, 0x34,
                /* 05F0 */  0x30, 0x4B, 0x18, 0x1A, 0x50, 0x8A, 0x37, 0x34,
                /* 05F8 */  0xFA, 0xFF, 0x1F, 0x1A, 0x1F, 0x92, 0x0F, 0x0B,
                /* 0600 */  0x31, 0x9F, 0x72, 0x22, 0xBC, 0x2F, 0xF8, 0x04,
                /* 0608 */  0xC5, 0xD0, 0x5F, 0x53, 0x7C, 0xBB, 0xF0, 0x4D,
                /* 0610 */  0x10, 0x37, 0x3E, 0x70, 0x5D, 0x3A, 0x3D, 0x3E,
                /* 0618 */  0xE0, 0x73, 0xE4, 0xF2, 0xF8, 0x70, 0x47, 0x27,
                /* 0620 */  0x8F, 0x0F, 0x86, 0xCB, 0xAB, 0x0C, 0x39, 0x9A,
                /* 0628 */  0xF8, 0x68, 0xC5, 0x86, 0x07, 0xB6, 0x9B, 0x9E,
                /* 0630 */  0x87, 0x07, 0x7C, 0xAE, 0x9B, 0x60, 0xBC, 0x42,
                /* 0638 */  0xF2, 0x6B, 0x09, 0x8C, 0x13, 0x14, 0xFE, 0xBA,
                /* 0640 */  0x09, 0xDE, 0xFF, 0xFF, 0x75, 0x13, 0x78, 0x8E,
                /* 0648 */  0x82, 0x6B, 0xBD, 0x64, 0xD3, 0x20, 0xAF, 0x1C,
                /* 0650 */  0xC5, 0x7A, 0x11, 0x50, 0x18, 0x9F, 0xD9, 0x00,
                /* 0658 */  0x47, 0x63, 0x7D, 0x66, 0x03, 0xCB, 0xBD, 0x80,
                /* 0660 */  0xDD, 0xD8, 0xE0, 0x9E, 0xD6, 0x60, 0xDF, 0x1D,
                /* 0668 */  0x1E, 0xCE, 0x1E, 0xD3, 0x1E, 0xD5, 0x1E, 0xD0,
                /* 0670 */  0x7C, 0xC4, 0x8E, 0xF1, 0x96, 0x16, 0x24, 0x4E,
                /* 0678 */  0x84, 0xD7, 0x81, 0xA7, 0x35, 0x5F, 0x32, 0xE2,
                /* 0680 */  0x05, 0x7A, 0x5A, 0x33, 0x46, 0x9C, 0x97, 0x36,
                /* 0688 */  0x23, 0xBE, 0x52, 0x84, 0x78, 0x58, 0xF3, 0xC9,
                /* 0690 */  0xCD, 0x78, 0x0F, 0x13, 0xE1, 0xC2, 0xBC, 0xB0,
                /* 0698 */  0x3D, 0xAD, 0x81, 0xE3, 0xFF, 0x7F, 0x5A, 0x83,
                /* 06A0 */  0x23, 0xE7, 0x8A, 0x0D, 0xD0, 0xE4, 0xA2, 0x8F,
                /* 06A8 */  0x3B, 0xA4, 0x80, 0xE5, 0xDA, 0xC0, 0x6E, 0x29,
                /* 06B0 */  0xF0, 0x2E, 0xD8, 0xC0, 0xF9, 0xFF, 0x7F, 0x44,
                /* 06B8 */  0x01, 0x5F, 0x96, 0x0B, 0x36, 0xCD, 0x71, 0xC1,
                /* 06C0 */  0x46, 0x71, 0x58, 0x0D, 0x90, 0xE6, 0x09, 0xFF,
                /* 06C8 */  0x7A, 0x0D, 0xFE, 0x49, 0xF8, 0x7A, 0x0D, 0xD8,
                /* 06D0 */  0xBE, 0xC5, 0xE2, 0xAE, 0xD7, 0xC0, 0xEA, 0xFF,
                /* 06D8 */  0x7F, 0xBD, 0x06, 0x96, 0x82, 0x47, 0x4A, 0xEF,
                /* 06E0 */  0xD4, 0xE0, 0xBA, 0x69, 0xE3, 0x41, 0xDF, 0xB4,
                /* 06E8 */  0x61, 0x0A, 0xBE, 0x45, 0xD1, 0x28, 0xE4, 0x8A,
                /* 06F0 */  0xB6, 0x10, 0x0A, 0xE3, 0x5B, 0x14, 0xE0, 0x08,
                /* 06F8 */  0xFB, 0x2D, 0x0A, 0x2C, 0x17, 0xA7, 0xB7, 0x28,
                /* 0700 */  0xFC, 0x0C, 0x3C, 0x68, 0xDF, 0x75, 0x18, 0xA6,
                /* 0708 */  0xEF, 0xD0, 0xF0, 0x4F, 0x4D, 0xCF, 0x4D, 0x0F,
                /* 0710 */  0x4E, 0x0F, 0xCD, 0x3E, 0x48, 0xF9, 0x70, 0xF0,
                /* 0718 */  0xFC, 0xF4, 0xFF, 0x8F, 0xF1, 0x5E, 0xE7, 0x9B,
                /* 0720 */  0xD4, 0x6B, 0x94, 0x2F, 0x30, 0xC7, 0x10, 0x31,
                /* 0728 */  0xCA, 0xCB, 0xB4, 0x21, 0xE2, 0xF9, 0xD4, 0xE4,
                /* 0730 */  0xB3, 0x42, 0xDC, 0x10, 0x0F, 0xD1, 0x46, 0x88,
                /* 0738 */  0xFA, 0x3C, 0xED, 0x09, 0xBD, 0x46, 0x81, 0x57,
                /* 0740 */  0xD0, 0x35, 0x0A, 0xA0, 0xC9, 0xFD, 0x08, 0x77,
                /* 0748 */  0x8D, 0x02, 0xCB, 0xBD, 0x81, 0x9D, 0x87, 0xF8,
                /* 0750 */  0x95, 0xC8, 0xD7, 0x06, 0x18, 0xF7, 0x28, 0x38,
                /* 0758 */  0xFF, 0xFF, 0x7B, 0x14, 0x60, 0x23, 0xCC, 0x3D,
                /* 0760 */  0x8A, 0x06, 0xB9, 0x47, 0xA1, 0x4E, 0x26, 0xBE,
                /* 0768 */  0xD4, 0x79, 0xA2, 0xE0, 0x08, 0x7F, 0x91, 0x42,
                /* 0770 */  0xC5, 0x26, 0x51, 0xE8, 0xC3, 0x10, 0x2A, 0xE6,
                /* 0778 */  0x61, 0x84, 0x82, 0x18, 0xD0, 0x19, 0x4E, 0x14,
                /* 0780 */  0x68, 0x15, 0x27, 0x0A, 0x72, 0x8B, 0xF1, 0xA4,
                /* 0788 */  0x1E, 0xA3, 0x00, 0x5F, 0xCB, 0xF4, 0x50, 0x79,
                /* 0790 */  0xE4, 0xA1, 0x52, 0x10, 0x0F, 0xD5, 0x71, 0x86,
                /* 0798 */  0x8A, 0x9E, 0xA4, 0xE7, 0x8F, 0xF9, 0xFF, 0x1F,
                /* 07A0 */  0x1C, 0xB0, 0x07, 0x29, 0x80, 0x17, 0x0A, 0x6D,
                /* 07A8 */  0xFA, 0xD4, 0x68, 0xD4, 0xAA, 0x41, 0x99, 0x1A,
                /* 07B0 */  0x65, 0x1A, 0xD4, 0xEA, 0x53, 0xA9, 0x31, 0x63,
                /* 07B8 */  0xE7, 0x50, 0x4B, 0x3B, 0x4B, 0x50, 0x31, 0x8B,
                /* 07C0 */  0xD1, 0x68, 0x1C, 0x05, 0x84, 0xCA, 0xFE, 0x9B,
                /* 07C8 */  0x0B, 0xC4, 0x21, 0x9F, 0x3A, 0x02, 0x74, 0xB0,
                /* 07D0 */  0x17, 0x95, 0x80, 0x2C, 0x6B, 0x6D, 0x02, 0x71,
                /* 07D8 */  0x7C, 0x13, 0x10, 0x8D, 0x80, 0x48, 0xCB, 0x63,
                /* 07E0 */  0x42, 0x40, 0xCE, 0x0D, 0x22, 0x20, 0xAB, 0x58,
                /* 07E8 */  0x93, 0x80, 0xAC, 0xF9, 0x01, 0x23, 0x70, 0xEB,
                /* 07F0 */  0xD4, 0x01, 0xC4, 0x52, 0x82, 0xD0, 0x44, 0x0B,
                /* 07F8 */  0x17, 0xA8, 0xE3, 0x81, 0x68, 0x30, 0x84, 0x46,
                /* 0800 */  0x40, 0x0E, 0x46, 0x21, 0x20, 0xCB, 0xF8, 0x74,
                /* 0808 */  0x0B, 0xDC, 0x02, 0xAC, 0x00, 0x31, 0xF9, 0x20,
                /* 0810 */  0x54, 0xB0, 0x17, 0x50, 0xA6, 0x1E, 0x44, 0x40,
                /* 0818 */  0x56, 0xBA, 0x56, 0x01, 0x59, 0x37, 0x88, 0x80,
                /* 0820 */  0xFE, 0xFF, 0x2F, 0x83, 0x32, 0x03, 0xCE, 0x32,
                /* 0828 */  0xBA, 0x01, 0x62, 0x0A, 0x1F, 0x0A, 0x02, 0xB1,
                /* 0830 */  0x26, 0x3D, 0xA0, 0x4C, 0x20, 0x88, 0xAE, 0x1C,
                /* 0838 */  0xC4, 0x0F, 0x10, 0x93, 0x06, 0x22, 0x20, 0xC7,
                /* 0840 */  0x39, 0x98, 0x08, 0xDC, 0x71, 0x14, 0x01, 0x52,
                /* 0848 */  0x47, 0xC3, 0xA5, 0x20, 0x54, 0xFC, 0xF3, 0x44,
                /* 0850 */  0x20, 0x16, 0x64, 0x09, 0x8C, 0x82, 0xD0, 0x08,
                /* 0858 */  0x9A, 0x40, 0x98, 0x3C, 0x4F, 0x20, 0x2C, 0xD4,
                /* 0860 */  0x9F, 0x5C, 0xA7, 0x15, 0xA2, 0x6A, 0x88, 0xD4,
                /* 0868 */  0x15, 0x08, 0x0B, 0xFC, 0x30, 0xD0, 0x60, 0x9C,
                /* 0870 */  0x1E, 0x44, 0x40, 0x4E, 0xFA, 0xA7, 0x0A, 0x44,
                /* 0878 */  0x72, 0x83, 0x08, 0xC8, 0xF9, 0x9F, 0x22, 0x02,
                /* 0880 */  0x77, 0xEA, 0xD7, 0x84, 0x86, 0x4F, 0xBE, 0x58,
                /* 0888 */  0x41, 0x88, 0xB8, 0x87, 0x55, 0x50, 0xA2, 0x14,
                /* 0890 */  0x44, 0x40, 0x56, 0xF6, 0xB4, 0x12, 0x90, 0x75,
                /* 0898 */  0x82, 0x08, 0xC8, 0xFF, 0x7F                   
            })
        }

        Device (WMI2)
        {
            Name (_HID, EisaId ("PNP0C14"))  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_WDG, Buffer (0x8C)
            {
                /* 0000 */  0xF1, 0x24, 0xB4, 0xFC, 0x5A, 0x07, 0x0E, 0x4E,
                /* 0008 */  0xBF, 0xC4, 0x62, 0xF3, 0xE7, 0x17, 0x71, 0xFA,
                /* 0010 */  0x41, 0x37, 0x01, 0x01, 0xE3, 0x5E, 0xBE, 0xE2,
                /* 0018 */  0xDA, 0x42, 0xDB, 0x49, 0x83, 0x78, 0x1F, 0x52,
                /* 0020 */  0x47, 0x38, 0x82, 0x02, 0x41, 0x38, 0x01, 0x02,
                /* 0028 */  0x9A, 0x01, 0x30, 0x74, 0xE9, 0xDC, 0x48, 0x45,
                /* 0030 */  0xBA, 0xB0, 0x9F, 0xDE, 0x09, 0x35, 0xCA, 0xFF,
                /* 0038 */  0x41, 0x39, 0x0A, 0x05, 0x03, 0x70, 0xF4, 0x7F,
                /* 0040 */  0x6C, 0x3B, 0x5E, 0x4E, 0xA2, 0x27, 0xE9, 0x79,
                /* 0048 */  0x82, 0x4A, 0x85, 0xD1, 0x41, 0x41, 0x01, 0x06,
                /* 0050 */  0x79, 0x36, 0x4D, 0x8F, 0x9E, 0x74, 0x79, 0x44,
                /* 0058 */  0x9B, 0x16, 0xC6, 0x26, 0x01, 0xFD, 0x25, 0xF0,
                /* 0060 */  0x41, 0x42, 0x01, 0x02, 0x69, 0xE8, 0xD2, 0x85,
                /* 0068 */  0x5A, 0x36, 0xCE, 0x4A, 0xA4, 0xD3, 0xCD, 0x69,
                /* 0070 */  0x2B, 0x16, 0x98, 0xA0, 0x41, 0x43, 0x01, 0x02,
                /* 0078 */  0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,
                /* 0080 */  0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,
                /* 0088 */  0x42, 0x42, 0x01, 0x00                         
            })
            Name (PREL, Buffer (0x08)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
            })
            Method (WQA7, 1, NotSerialized)
            {
                Acquire (\_SB.WMI1.MWMI, 0xFFFF)
                \WMIS (0x07, 0x00)
                PREL [0x00] = \WLS0
                PREL [0x01] = \WLS1
                PREL [0x02] = \WLS2
                PREL [0x03] = \WLS3
                PREL [0x04] = \WLS4
                PREL [0x05] = \WLS5
                PREL [0x06] = \WLS6
                PREL [0x07] = \WLS7
                Release (\_SB.WMI1.MWMI)
                Return (PREL)
            }

            Method (WMA8, 3, NotSerialized)
            {
                CreateByteField (Arg2, 0x00, PRE0)
                CreateByteField (Arg2, 0x01, PRE1)
                CreateByteField (Arg2, 0x02, PRE2)
                CreateByteField (Arg2, 0x03, PRE3)
                CreateByteField (Arg2, 0x04, PRE4)
                CreateByteField (Arg2, 0x05, PRE5)
                CreateByteField (Arg2, 0x06, PRE6)
                CreateByteField (Arg2, 0x07, PRE7)
                Acquire (\_SB.WMI1.MWMI, 0xFFFF)
                \WLS0 = PRE0
                \WLS1 = PRE1
                \WLS2 = PRE2
                \WLS3 = PRE3
                \WLS4 = PRE4
                \WLS5 = PRE5
                \WLS6 = PRE6
                \WLS7 = PRE7
                \WMIS (0x08, 0x00)
                Release (\_SB.WMI1.MWMI)
            }

            Name (ITEM, Package (0x05)
            {
                Package (0x02)
                {
                    0x00, 
                    "InhibitEnteringThinkPadSetup"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "MTMSerialConcatenation"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "SwapProductName"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "ComputraceMsgDisable"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "AtpMsgDisable"
                }
            })
            Name (VSEL, Package (0x02)
            {
                Package (0x02)
                {
                    "Disable", 
                    "Enable"
                }, 

                Package (0x02)
                {
                    "Off", 
                    "On"
                }
            })
            Method (WQA9, 1, NotSerialized)
            {
                Acquire (\_SB.WMI1.MWMI, 0xFFFF)
                If ((\WMIS (0x09, Arg0) != 0x00))
                {
                    Release (\_SB.WMI1.MWMI)
                    Return ("")
                }

                Local0 = DerefOf (ITEM [\WITM])
                Local1 = DerefOf (Local0 [0x00])
                Local2 = DerefOf (Local0 [0x01])
                Concatenate (Local2, ",", Local6)
                Local3 = DerefOf (VSEL [Local1])
                Concatenate (Local6, DerefOf (Local3 [\WSEL]), Local7)
                Release (\_SB.WMI1.MWMI)
                Return (Local7)
            }

            Method (WMAA, 3, NotSerialized)
            {
                Acquire (\_SB.WMI1.MWMI, 0xFFFF)
                If ((SizeOf (Arg2) == 0x00))
                {
                    Local0 = 0x02
                }
                Else
                {
                    Local0 = \_SB.WMI1.CARG (Arg2)
                    If ((Local0 == 0x00))
                    {
                        Local0 = \_SB.WMI1.WSET (ITEM, VSEL)
                        If ((Local0 == 0x00))
                        {
                            Local0 = \WMIS (0x0A, 0x00)
                        }
                    }
                }

                Release (\_SB.WMI1.MWMI)
                Return (DerefOf (\_SB.WMI1.RETN [Local0]))
            }

            Method (WMAB, 3, NotSerialized)
            {
                CreateByteField (Arg2, 0x00, ASS0)
                CreateWordField (Arg2, 0x01, ASS1)
                CreateByteField (Arg2, 0x03, ASS2)
                Acquire (\_SB.WMI1.MWMI, 0xFFFF)
                \WASB = ASS0
                \WASI = ASS1
                \WASD = ASS2
                \WMIS (0x0B, 0x00)
                Local0 = \WASS
                Release (\_SB.WMI1.MWMI)
                Return (Local0)
            }

            Method (WMAC, 3, NotSerialized)
            {
                CreateByteField (Arg2, 0x00, ASS0)
                CreateWordField (Arg2, 0x01, ASS1)
                Acquire (\_SB.WMI1.MWMI, 0xFFFF)
                \WASB = ASS0
                \WASI = ASS1
                \WMIS (0x0C, Arg1)
                Local0 = \WASS
                Release (\_SB.WMI1.MWMI)
                Return (Local0)
            }

            Name (WQBB, Buffer (0x0713)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,
                /* 0008 */  0x03, 0x07, 0x00, 0x00, 0xB0, 0x2A, 0x00, 0x00,
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,
                /* 0018 */  0x28, 0xDB, 0x94, 0x00, 0x01, 0x06, 0x18, 0x42,
                /* 0020 */  0x10, 0x13, 0x10, 0x8A, 0x0D, 0x21, 0x02, 0x0B,
                /* 0028 */  0x83, 0x50, 0x50, 0x18, 0x14, 0xA0, 0x45, 0x41,
                /* 0030 */  0xC8, 0x05, 0x14, 0x95, 0x02, 0x21, 0xC3, 0x02,
                /* 0038 */  0x14, 0x0B, 0x70, 0x2E, 0x40, 0xBA, 0x00, 0xE5,
                /* 0040 */  0x28, 0x72, 0x0C, 0x22, 0x02, 0xF7, 0xEF, 0x0F,
                /* 0048 */  0x31, 0x10, 0x88, 0x14, 0x40, 0x48, 0x28, 0x84,
                /* 0050 */  0x44, 0x00, 0x53, 0x21, 0x70, 0x84, 0xA0, 0x5F,
                /* 0058 */  0x01, 0x08, 0x1D, 0x0A, 0x90, 0x29, 0xC0, 0xA0,
                /* 0060 */  0x00, 0xA7, 0x08, 0x22, 0x88, 0xD2, 0xB2, 0x00,
                /* 0068 */  0xDD, 0x02, 0x7C, 0x0B, 0xD0, 0x0E, 0x21, 0xB4,
                /* 0070 */  0xC8, 0x95, 0x0A, 0xB0, 0x08, 0x25, 0x9F, 0x80,
                /* 0078 */  0x92, 0x88, 0x22, 0xD9, 0x78, 0xB2, 0x8D, 0x48,
                /* 0080 */  0xE6, 0x61, 0x91, 0x83, 0x40, 0x89, 0x19, 0x04,
                /* 0088 */  0x4A, 0x27, 0xAE, 0x6C, 0xE2, 0x6A, 0x10, 0x07,
                /* 0090 */  0x10, 0xE5, 0x3C, 0xA2, 0x24, 0x38, 0xAA, 0x83,
                /* 0098 */  0x88, 0x10, 0xBB, 0x5C, 0x01, 0x92, 0x07, 0x20,
                /* 00A0 */  0xCD, 0x13, 0x93, 0xF5, 0x39, 0x68, 0x64, 0x6C,
                /* 00A8 */  0x04, 0x3C, 0x98, 0x04, 0x10, 0x16, 0x65, 0x9D,
                /* 00B0 */  0x8A, 0x02, 0x83, 0xF2, 0x00, 0x22, 0x39, 0x63,
                /* 00B8 */  0x45, 0x01, 0xDB, 0xEB, 0x44, 0x64, 0x72, 0xA0,
                /* 00C0 */  0x54, 0x12, 0x1C, 0x6A, 0x98, 0x9E, 0x5A, 0xF3,
                /* 00C8 */  0x13, 0xD3, 0x44, 0x4E, 0xAD, 0xE9, 0x21, 0x0B,
                /* 00D0 */  0x92, 0x49, 0x1B, 0x0A, 0x6A, 0xEC, 0x9E, 0xD6,
                /* 00D8 */  0x49, 0x79, 0xA6, 0x11, 0x0F, 0xCA, 0x30, 0x09,
                /* 00E0 */  0x3C, 0x0A, 0x86, 0xC6, 0x09, 0xCA, 0x82, 0x90,
                /* 00E8 */  0x83, 0x81, 0xA2, 0x00, 0x4F, 0xC2, 0x73, 0x2C,
                /* 00F0 */  0x5E, 0x80, 0xF0, 0x11, 0x93, 0xB3, 0x40, 0x8C,
                /* 00F8 */  0x04, 0x3E, 0x13, 0x78, 0xE4, 0xC7, 0x8C, 0x1D,
                /* 0100 */  0x51, 0xB8, 0x80, 0xE7, 0x73, 0x0C, 0x91, 0xE3,
                /* 0108 */  0x1E, 0x6A, 0x8C, 0xA3, 0x88, 0x7C, 0x38, 0x0C,
                /* 0110 */  0xED, 0x74, 0xE3, 0x1C, 0xD8, 0xE9, 0x14, 0x04,
                /* 0118 */  0x2E, 0x90, 0x60, 0x3D, 0xCF, 0x59, 0x20, 0xFF,
                /* 0120 */  0xFF, 0x18, 0x07, 0xC1, 0xF0, 0x8E, 0x01, 0x23,
                /* 0128 */  0x03, 0x42, 0x1E, 0x05, 0x58, 0x1D, 0x96, 0x26,
                /* 0130 */  0x91, 0xC0, 0xEE, 0x05, 0x68, 0xBC, 0x04, 0x48,
                /* 0138 */  0xE1, 0x20, 0xA5, 0x0C, 0x42, 0x30, 0x8D, 0x09,
                /* 0140 */  0xB0, 0x75, 0x68, 0x90, 0x37, 0x01, 0xD6, 0xAE,
                /* 0148 */  0x02, 0x42, 0x89, 0x74, 0x02, 0x71, 0x42, 0x44,
                /* 0150 */  0x89, 0x18, 0xD4, 0x40, 0x51, 0x6A, 0x43, 0x15,
                /* 0158 */  0x4C, 0x67, 0xC3, 0x13, 0x66, 0xDC, 0x10, 0x31,
                /* 0160 */  0x0C, 0x14, 0xB7, 0xFD, 0x41, 0x90, 0x61, 0xE3,
                /* 0168 */  0xC6, 0xEF, 0x41, 0x9D, 0xD6, 0xD9, 0x1D, 0xD3,
                /* 0170 */  0xAB, 0x82, 0x09, 0x3C, 0xE9, 0x37, 0x84, 0xA7,
                /* 0178 */  0x83, 0xA3, 0x38, 0xDA, 0xA8, 0x31, 0x9A, 0x23,
                /* 0180 */  0x65, 0xAB, 0x96, 0x06, 0x0E, 0x45, 0x82, 0x47,
                /* 0188 */  0x9D, 0x17, 0x7C, 0x32, 0xF0, 0xD0, 0x0E, 0xDB,
                /* 0190 */  0x83, 0x3D, 0x4B, 0x0F, 0xE1, 0x08, 0x9E, 0x19,
                /* 0198 */  0x1E, 0x09, 0x3C, 0x06, 0x76, 0x57, 0xF0, 0x21,
                /* 01A0 */  0xC0, 0x67, 0x04, 0xBC, 0x6B, 0x40, 0x5D, 0x0E,
                /* 01A8 */  0x1E, 0x0D, 0xD8, 0xA4, 0xC3, 0x61, 0xC6, 0xEB,
                /* 01B0 */  0xB9, 0x7B, 0xEA, 0x3E, 0x63, 0xF0, 0xF3, 0x86,
                /* 01B8 */  0x07, 0x87, 0x1B, 0xE9, 0xC9, 0x1C, 0x59, 0xA9,
                /* 01C0 */  0x02, 0xCC, 0x5E, 0x03, 0x74, 0x94, 0xF0, 0x81,
                /* 01C8 */  0x83, 0xDD, 0x05, 0x9E, 0x02, 0x4C, 0x60, 0xF9,
                /* 01D0 */  0x83, 0x40, 0x8D, 0xCC, 0xD0, 0x1E, 0xEF, 0x7B,
                /* 01D8 */  0x87, 0x21, 0x9F, 0x14, 0x0E, 0x8B, 0x89, 0x3D,
                /* 01E0 */  0x78, 0xD0, 0xF1, 0x80, 0xFF, 0x3E, 0xF2, 0xA4,
                /* 01E8 */  0xE1, 0xE9, 0x7B, 0xBE, 0x26, 0x18, 0x18, 0x42,
                /* 01F0 */  0x56, 0xC6, 0x83, 0x1A, 0x88, 0xA1, 0x5F, 0x15,
                /* 01F8 */  0x0E, 0xE3, 0x34, 0x7C, 0x02, 0xF1, 0x39, 0x20,
                /* 0200 */  0x48, 0x8C, 0x63, 0xF2, 0xE0, 0xFC, 0xFF, 0x27,
                /* 0208 */  0x70, 0xAC, 0x91, 0xD3, 0x73, 0x8A, 0xCF, 0x13,
                /* 0210 */  0xFC, 0x70, 0xE1, 0xF3, 0x04, 0x3B, 0x31, 0x9C,
                /* 0218 */  0xC6, 0x73, 0x80, 0x87, 0x73, 0x56, 0x3E, 0x4E,
                /* 0220 */  0x00, 0x0B, 0x88, 0xD7, 0x09, 0x3E, 0x50, 0xF8,
                /* 0228 */  0xB0, 0x87, 0xE6, 0x51, 0xBC, 0x44, 0xBC, 0x3D,
                /* 0230 */  0x98, 0x20, 0xDA, 0x43, 0x0C, 0x18, 0x67, 0x84,
                /* 0238 */  0x3B, 0x6F, 0xC0, 0x39, 0xC5, 0x00, 0x0F, 0xA8,
                /* 0240 */  0x43, 0xC0, 0x1C, 0x26, 0x3C, 0x04, 0x3E, 0x80,
                /* 0248 */  0x67, 0x90, 0x73, 0xF4, 0x31, 0xE7, 0xCC, 0x70,
                /* 0250 */  0xC7, 0x1D, 0xB0, 0x0D, 0x83, 0x47, 0xB6, 0x00,
                /* 0258 */  0xC2, 0xE2, 0x3C, 0x09, 0x14, 0xF0, 0x6D, 0x40,
                /* 0260 */  0x61, 0x7C, 0xB8, 0x01, 0xEF, 0xFF, 0xFF, 0x70,
                /* 0268 */  0x03, 0x5C, 0xCF, 0x07, 0xB8, 0xE3, 0x03, 0xDC,
                /* 0270 */  0x8B, 0x05, 0x3B, 0x3C, 0x3C, 0xDE, 0x00, 0x83,
                /* 0278 */  0x21, 0x3D, 0xD2, 0xBC, 0xD5, 0xC4, 0x78, 0xB5,
                /* 0280 */  0x09, 0x11, 0xE1, 0xA1, 0xE6, 0xDD, 0xC6, 0x48,
                /* 0288 */  0xF1, 0x1E, 0x6F, 0xD8, 0x35, 0xE6, 0x2C, 0x1E,
                /* 0290 */  0x40, 0xA2, 0x14, 0x87, 0xA6, 0x8B, 0x4D, 0x8C,
                /* 0298 */  0x28, 0x6F, 0x36, 0x86, 0x7D, 0xD3, 0x31, 0x50,
                /* 02A0 */  0xA8, 0x48, 0x11, 0xC2, 0xBC, 0x58, 0x84, 0x78,
                /* 02A8 */  0xBC, 0x01, 0xB3, 0xA4, 0x97, 0x8A, 0x3E, 0x07,
                /* 02B0 */  0x3E, 0xDE, 0x00, 0x5E, 0xFE, 0xFF, 0xC7, 0x1B,
                /* 02B8 */  0xC0, 0xC3, 0x30, 0x7C, 0x4C, 0x01, 0xDB, 0xCD,
                /* 02C0 */  0x81, 0xDD, 0x53, 0xE0, 0x9F, 0x53, 0x00, 0x47,
                /* 02C8 */  0x42, 0x1E, 0x01, 0x3A, 0x78, 0x58, 0x04, 0x88,
                /* 02D0 */  0x6C, 0x3C, 0x03, 0x7C, 0x26, 0xA2, 0x02, 0xA9,
                /* 02D8 */  0x34, 0x53, 0xB0, 0x8C, 0x53, 0xB0, 0x3A, 0x21,
                /* 02E0 */  0x72, 0x19, 0x14, 0x12, 0x01, 0xA1, 0x91, 0x19,
                /* 02E8 */  0xCE, 0x87, 0x44, 0x83, 0x19, 0xC4, 0xE7, 0x03,
                /* 02F0 */  0x9F, 0x29, 0x7C, 0x72, 0xE2, 0xFF, 0xFF, 0x93,
                /* 02F8 */  0x13, 0x78, 0x0E, 0x26, 0x0F, 0x15, 0xB0, 0x10,
                /* 0300 */  0x7D, 0x5A, 0xE0, 0x70, 0x3E, 0xB3, 0x70, 0x38,
                /* 0308 */  0x1F, 0x49, 0xF8, 0x01, 0x92, 0x1F, 0x95, 0xC0,
                /* 0310 */  0x25, 0xF0, 0xD0, 0x00, 0x0A, 0x20, 0xDF, 0x0F,
                /* 0318 */  0x7C, 0x0E, 0x78, 0x46, 0x60, 0x73, 0x78, 0x24,
                /* 0320 */  0xF0, 0x81, 0x80, 0xC1, 0xF3, 0x68, 0xA3, 0xA2,
                /* 0328 */  0x47, 0x1B, 0x0F, 0x8F, 0x1F, 0x19, 0x3C, 0x9F,
                /* 0330 */  0x07, 0x82, 0xA3, 0x7C, 0x24, 0xC0, 0x61, 0xBC,
                /* 0338 */  0x5F, 0x78, 0x88, 0x3E, 0xE5, 0xC0, 0x9A, 0xC8,
                /* 0340 */  0x51, 0x5B, 0xF4, 0x89, 0x40, 0xA0, 0xCF, 0x5C,
                /* 0348 */  0x98, 0x53, 0x0E, 0x70, 0x0A, 0x3E, 0x7A, 0x54,
                /* 0350 */  0xD4, 0x03, 0x29, 0x68, 0x4F, 0x0A, 0x3E, 0x2B,
                /* 0358 */  0xF8, 0xF0, 0x05, 0xFF, 0xFF, 0x7F, 0xF8, 0x82,
                /* 0360 */  0x33, 0xAF, 0x97, 0x35, 0x1F, 0x38, 0xE2, 0x9C,
                /* 0368 */  0xC5, 0xE9, 0xBE, 0x5B, 0xE0, 0x4F, 0xA4, 0xC0,
                /* 0370 */  0x2C, 0xC8, 0x89, 0x14, 0x05, 0xE3, 0x13, 0x29,
                /* 0378 */  0x60, 0xF3, 0x16, 0x80, 0xBD, 0x2E, 0x3C, 0x89,
                /* 0380 */  0xC0, 0x38, 0x47, 0x3C, 0x63, 0xC1, 0x3C, 0x54,
                /* 0388 */  0x9D, 0xE2, 0x4B, 0xD5, 0x1B, 0x43, 0x84, 0x27,
                /* 0390 */  0xAB, 0xD7, 0xA8, 0x07, 0x2C, 0x83, 0xBD, 0x08,
                /* 0398 */  0x18, 0xE6, 0x15, 0xCB, 0xA7, 0xAB, 0x10, 0x0F,
                /* 03A0 */  0x58, 0x3E, 0x6B, 0x45, 0x0B, 0x11, 0x32, 0x4A,
                /* 03A8 */  0xB0, 0x57, 0xAC, 0x57, 0x19, 0x1F, 0xA9, 0x0C,
                /* 03B0 */  0x1E, 0x30, 0x6C, 0xB4, 0x48, 0x11, 0x1E, 0xB1,
                /* 03B8 */  0xF0, 0xFF, 0xFF, 0x23, 0x16, 0x78, 0x24, 0x1C,
                /* 03C0 */  0x48, 0x01, 0xAA, 0x0C, 0x1C, 0x77, 0x20, 0x05,
                /* 03C8 */  0xF6, 0xA7, 0x09, 0xFC, 0xF5, 0xC2, 0xE3, 0xC1,
                /* 03D0 */  0xFE, 0xFF, 0xCF, 0x01, 0xE0, 0x3B, 0xC4, 0x00,
                /* 03D8 */  0x83, 0x01, 0xC3, 0x38, 0xC4, 0x00, 0x0F, 0xC1,
                /* 03E0 */  0x27, 0x33, 0xD0, 0x1F, 0x77, 0xE0, 0x8F, 0x83,
                /* 03E8 */  0x67, 0x7C, 0x72, 0x98, 0x40, 0x61, 0x4E, 0xA4,
                /* 03F0 */  0x28, 0x18, 0x9F, 0x48, 0x01, 0x67, 0xFF, 0xFF,
                /* 03F8 */  0xC3, 0x15, 0x18, 0x8E, 0x37, 0xE0, 0xBF, 0xCD,
                /* 0400 */  0xF8, 0x10, 0xEA, 0xF3, 0x8D, 0x2F, 0xA4, 0x86,
                /* 0408 */  0x78, 0xB1, 0x79, 0x53, 0x7B, 0x25, 0x78, 0x7D,
                /* 0410 */  0x67, 0xD7, 0x9A, 0xD7, 0x77, 0x9F, 0x0A, 0x9E,
                /* 0418 */  0x44, 0x23, 0x84, 0x8C, 0xF2, 0x92, 0x63, 0x90,
                /* 0420 */  0x10, 0xAF, 0xA3, 0x06, 0x0C, 0x16, 0x24, 0xE2,
                /* 0428 */  0x29, 0x3C, 0xED, 0x3C, 0xDE, 0x80, 0x57, 0xD4,
                /* 0430 */  0x81, 0x14, 0xA0, 0xC7, 0xFF, 0xFF, 0x40, 0x0A,
                /* 0438 */  0x0C, 0xEE, 0x29, 0xB0, 0xCF, 0x29, 0x80, 0xA7,
                /* 0440 */  0xE4, 0x27, 0x52, 0x9A, 0xFA, 0x44, 0x8A, 0x56,
                /* 0448 */  0x04, 0xA4, 0xA9, 0x82, 0x85, 0x60, 0xFA, 0x13,
                /* 0450 */  0x29, 0x3D, 0x18, 0x38, 0x37, 0x89, 0x92, 0x0F,
                /* 0458 */  0x8D, 0xC2, 0x39, 0xEB, 0x81, 0x84, 0x82, 0x18,
                /* 0460 */  0xD0, 0x41, 0x0E, 0x15, 0xE8, 0xB3, 0x8A, 0x0F,
                /* 0468 */  0x24, 0x07, 0xF2, 0x88, 0xE8, 0x61, 0xF9, 0x50,
                /* 0470 */  0xE9, 0xBB, 0x8A, 0xCF, 0x21, 0x3E, 0x52, 0x78,
                /* 0478 */  0xFC, 0x3E, 0x2C, 0xF0, 0xFF, 0x8C, 0x8F, 0xA3,
                /* 0480 */  0x0C, 0xBC, 0x9A, 0xF3, 0x0A, 0x0A, 0xCC, 0xA7,
                /* 0488 */  0x51, 0x8C, 0xAE, 0xFB, 0x04, 0x48, 0xFE, 0xFF,
                /* 0490 */  0xF3, 0xE3, 0xFA, 0x0E, 0xA3, 0x20, 0x47, 0xE7,
                /* 0498 */  0xE1, 0x27, 0x8B, 0x8A, 0x3B, 0x59, 0x0A, 0xE2,
                /* 04A0 */  0xC9, 0x3A, 0xCA, 0x64, 0xD1, 0x33, 0xF1, 0xED,
                /* 04A8 */  0xC2, 0x33, 0x7A, 0xEF, 0xF2, 0x0D, 0x96, 0xDD,
                /* 04B0 */  0x64, 0xE1, 0x5D, 0x06, 0x42, 0x3E, 0x1A, 0xF8,
                /* 04B8 */  0x26, 0x0B, 0x77, 0x2C, 0xBE, 0x8C, 0x80, 0xEF,
                /* 04C0 */  0x26, 0x0B, 0x78, 0x1D, 0x8D, 0xCF, 0x16, 0xEC,
                /* 04C8 */  0x14, 0xE2, 0xEB, 0x1A, 0xAC, 0x3B, 0xB3, 0x09,
                /* 04D0 */  0xFE, 0xFF, 0x47, 0xCF, 0x82, 0xDE, 0x64, 0x41,
                /* 04D8 */  0x1B, 0xE8, 0x9C, 0x40, 0x07, 0xFE, 0xFE, 0x02,
                /* 04E0 */  0x3E, 0xAC, 0x83, 0x38, 0x2A, 0x76, 0x40, 0xF0,
                /* 04E8 */  0xA1, 0x04, 0x7F, 0x91, 0x05, 0x3E, 0x97, 0x33,
                /* 04F0 */  0x1E, 0x68, 0x9D, 0x8A, 0xF7, 0x1A, 0xA0, 0x30,
                /* 04F8 */  0xBE, 0x9C, 0x01, 0x8E, 0xAE, 0xF3, 0xB8, 0xF3,
                /* 0500 */  0x02, 0xDC, 0x11, 0x44, 0xF2, 0x45, 0xC2, 0x77,
                /* 0508 */  0x85, 0x48, 0x06, 0xF1, 0xED, 0xE0, 0xE0, 0x22,
                /* 0510 */  0x31, 0x8C, 0x50, 0x31, 0xDE, 0x06, 0x70, 0xE7,
                /* 0518 */  0x08, 0x1F, 0x25, 0xFE, 0xFF, 0xAF, 0x67, 0x30,
                /* 0520 */  0xAF, 0x63, 0x8F, 0x67, 0x86, 0x79, 0x38, 0x7B,
                /* 0528 */  0x37, 0x7B, 0x29, 0xF3, 0xB9, 0xEC, 0x89, 0xD6,
                /* 0530 */  0x20, 0x67, 0xF6, 0x7A, 0xE6, 0x4B, 0x9A, 0xA1,
                /* 0538 */  0x0C, 0xF1, 0x8E, 0xF6, 0x5E, 0x16, 0x31, 0xCA,
                /* 0540 */  0x3B, 0x41, 0x8C, 0xA7, 0xB3, 0x10, 0x2F, 0xB6,
                /* 0548 */  0x3E, 0xCF, 0x1A, 0xE6, 0xF5, 0x2C, 0xC8, 0x4B,
                /* 0550 */  0x84, 0xAF, 0x67, 0x60, 0x95, 0x73, 0x3D, 0x03,
                /* 0558 */  0x68, 0x72, 0x29, 0x05, 0xE3, 0x8D, 0x01, 0xF7,
                /* 0560 */  0xFF, 0x1F, 0xCE, 0x03, 0xC2, 0x93, 0x03, 0x3B,
                /* 0568 */  0x40, 0x60, 0x0E, 0x24, 0xC0, 0xE4, 0x16, 0x87,
                /* 0570 */  0xBB, 0x9D, 0x81, 0x71, 0x5A, 0xCF, 0x19, 0x9E,
                /* 0578 */  0xDA, 0xBB, 0x19, 0x8C, 0xEC, 0x77, 0x33, 0x9A,
                /* 0580 */  0xFB, 0x6E, 0x86, 0x3A, 0x9B, 0x58, 0x0F, 0x90,
                /* 0588 */  0xE6, 0x09, 0x86, 0xAB, 0x19, 0x18, 0x9D, 0x5C,
                /* 0590 */  0xCD, 0x80, 0xFC, 0x21, 0xE0, 0x08, 0x3C, 0x94,
                /* 0598 */  0x57, 0x92, 0xA7, 0x90, 0x57, 0x33, 0xE0, 0xF3,
                /* 05A0 */  0xFF, 0xBF, 0x9A, 0xC1, 0x9B, 0x2C, 0xEE, 0x6A,
                /* 05A8 */  0x06, 0x9C, 0x47, 0x8B, 0xBD, 0x9A, 0x01, 0x93,
                /* 05B0 */  0x78, 0x57, 0x33, 0xA0, 0x77, 0x37, 0x02, 0x6E,
                /* 05B8 */  0x01, 0x4D, 0x0C, 0x83, 0x45, 0x3A, 0x4E, 0xA3,
                /* 05C0 */  0x60, 0x7C, 0xC3, 0x02, 0xF7, 0xFF, 0xFF, 0x86,
                /* 05C8 */  0x05, 0x3C, 0x0F, 0xA8, 0xB8, 0x61, 0xC3, 0x3D,
                /* 05D0 */  0x1C, 0xBC, 0xF3, 0xB0, 0x59, 0xC3, 0xB9, 0xE3,
                /* 05D8 */  0x61, 0xA6, 0x8D, 0xBF, 0x62, 0xC1, 0x3F, 0x41,
                /* 05E0 */  0xFB, 0x08, 0x71, 0x5A, 0x51, 0x1E, 0xAC, 0xDE,
                /* 05E8 */  0xAE, 0x7C, 0xCA, 0x32, 0xD4, 0x19, 0xBC, 0x62,
                /* 05F0 */  0xF9, 0x92, 0xE7, 0x13, 0x35, 0xBB, 0x6B, 0xB1,
                /* 05F8 */  0x2B, 0x96, 0x41, 0x82, 0x1A, 0xF9, 0x39, 0x8B,
                /* 0600 */  0xDD, 0xA9, 0x8D, 0xF7, 0x8A, 0x05, 0x58, 0xFD,
                /* 0608 */  0xFF, 0x5F, 0xB1, 0x00, 0xA7, 0x27, 0x08, 0x4E,
                /* 0610 */  0xE0, 0x2B, 0x16, 0xE0, 0x27, 0xF6, 0xB3, 0x41,
                /* 0618 */  0x37, 0x2A, 0x72, 0xC5, 0x42, 0x71, 0x58, 0xCD,
                /* 0620 */  0x15, 0x0B, 0xE2, 0x3C, 0x31, 0x37, 0x2C, 0xE0,
                /* 0628 */  0xF0, 0xFF, 0xBF, 0x61, 0x01, 0xAC, 0x0D, 0x78,
                /* 0630 */  0xC3, 0x02, 0x22, 0xFF, 0xFF, 0x1B, 0x16, 0xAC,
                /* 0638 */  0xBB, 0x11, 0xF0, 0x3B, 0x20, 0xFA, 0xAE, 0xC1,
                /* 0640 */  0xCF, 0xD2, 0x56, 0x74, 0xD7, 0x80, 0x32, 0xC3,
                /* 0648 */  0xD7, 0x20, 0x9F, 0x75, 0x82, 0x3D, 0x5E, 0x7B,
                /* 0650 */  0x0C, 0x2F, 0x49, 0xE1, 0x7C, 0xDB, 0x00, 0xF8,
                /* 0658 */  0xF4, 0xFF, 0xBF, 0x6D, 0x00, 0x3C, 0x18, 0xBF,
                /* 0660 */  0x6F, 0x1B, 0xC0, 0x4F, 0xA1, 0x4D, 0x9F, 0x1A,
                /* 0668 */  0x8D, 0x5A, 0x35, 0x28, 0x53, 0xA3, 0x4C, 0x83,
                /* 0670 */  0x5A, 0x7D, 0x2A, 0x35, 0x66, 0x4C, 0xD3, 0xB9,
                /* 0678 */  0xCE, 0x77, 0x0C, 0x2A, 0x69, 0x65, 0x1A, 0x9A,
                /* 0680 */  0x03, 0x81, 0xD0, 0x00, 0x12, 0x40, 0x58, 0xE8,
                /* 0688 */  0x83, 0x93, 0x0E, 0x0A, 0xE4, 0xA5, 0x28, 0x20,
                /* 0690 */  0x8B, 0x5D, 0x98, 0x40, 0x2C, 0x53, 0x05, 0x44,
                /* 0698 */  0x23, 0xD7, 0x0B, 0x83, 0x08, 0xC8, 0xF1, 0x1E,
                /* 06A0 */  0x64, 0x02, 0x75, 0x24, 0x1D, 0x40, 0x4C, 0x90,
                /* 06A8 */  0x8F, 0xE1, 0xD2, 0xC7, 0x80, 0x40, 0x2C, 0x9B,
                /* 06B0 */  0x56, 0x07, 0x4B, 0xF2, 0x6E, 0x10, 0x90, 0xC3,
                /* 06B8 */  0x82, 0xD0, 0xFF, 0x7F, 0x40, 0x2B, 0x43, 0x60,
                /* 06C0 */  0x69, 0x41, 0x04, 0xE4, 0x64, 0x5A, 0x80, 0x58,
                /* 06C8 */  0x4E, 0x10, 0x01, 0x59, 0x8F, 0x19, 0x70, 0xA6,
                /* 06D0 */  0xC5, 0x0D, 0x10, 0x4B, 0x02, 0x42, 0x55, 0xDB,
                /* 06D8 */  0x01, 0x65, 0x11, 0x40, 0x04, 0x64, 0xB9, 0x7A,
                /* 06E0 */  0x80, 0x98, 0x78, 0x10, 0x01, 0x39, 0xB2, 0x1F,
                /* 06E8 */  0x70, 0x16, 0xD8, 0x10, 0x20, 0x55, 0x04, 0xC2,
                /* 06F0 */  0x84, 0xBD, 0x29, 0x05, 0x6A, 0x95, 0x20, 0x02,
                /* 06F8 */  0xB2, 0x22, 0x4B, 0x40, 0x4C, 0x1F, 0x88, 0x80,
                /* 0700 */  0xAC, 0xC9, 0x13, 0x10, 0x13, 0x08, 0xA2, 0x4B,
                /* 0708 */  0x09, 0xF9, 0xB7, 0x08, 0xC8, 0xD2, 0x40, 0x04,
                /* 0710 */  0xE4, 0xFF, 0x3F                               
            })
        }

        Scope (\_SB.PCI0.LPC.EC.HKEY)
        {
            Mutex(BFWM, 0)
            Method (MHCF, 1, NotSerialized)
            {
                Local0 = \BFWC (Arg0)
                Return (Local0)
            }

            Method (MHPF, 1, NotSerialized)
            {
                Name (RETB, Buffer (0x25) {})
                Acquire (BFWM, 0xFFFF)
                If ((SizeOf (Arg0) <= 0x25))
                {
                    \BFWB = Arg0
                    If (\BFWP ())
                    {
                        \_SB.PCI0.LPC.EC.CHKS ()
                        \BFWL ()
                    }

                    RETB = \BFWB
                }

                Release (BFWM)
                Return (RETB)
            }

            Method (MHIF, 1, NotSerialized)
            {
                Name (RETB, Buffer (0x0A) {})
                Acquire (BFWM, 0xFFFF)
                \BFWG (Arg0)
                RETB = \BFWB
                Release (BFWM)
                Return (RETB)
            }

            Method (MHDM, 1, NotSerialized)
            {
                \BDMC (Arg0)
            }
        }

        Scope (\_SB.PCI0.LPC.EC.HKEY)
        {
            Method (PSSG, 1, NotSerialized)
            {
                Return (\PSIF (0x00, 0x00))
            }

            Method (PSSS, 1, NotSerialized)
            {
                Return (\PSIF (0x01, Arg0))
            }

            Method (PSBS, 1, NotSerialized)
            {
                Return (\PSIF (0x02, Arg0))
            }

            Method (BICG, 1, NotSerialized)
            {
                Return (\PSIF (0x03, Arg0))
            }

            Method (BICS, 1, NotSerialized)
            {
                Return (\PSIF (0x04, Arg0))
            }

            Method (BCTG, 1, NotSerialized)
            {
                Return (\PSIF (0x05, Arg0))
            }

            Method (BCCS, 1, NotSerialized)
            {
                Return (\PSIF (0x06, Arg0))
            }

            Method (BCSG, 1, NotSerialized)
            {
                Return (\PSIF (0x07, Arg0))
            }

            Method (BCSS, 1, NotSerialized)
            {
                Return (\PSIF (0x08, Arg0))
            }

            Method (BDSG, 1, NotSerialized)
            {
                Return (\PSIF (0x09, Arg0))
            }

            Method (BDSS, 1, NotSerialized)
            {
                Return (\PSIF (0x0A, Arg0))
            }
        }

        Scope (\_SB.PCI0.LPC.EC.HKEY)
        {
            Method (GILN, 0, NotSerialized)
            {
                Return ((0x02 | \ILNF))
            }

            Method (SILN, 1, NotSerialized)
            {
                If ((0x01 == Arg0))
                {
                    \ILNF = 0x01
                    BBLS = 0x00
                    Return (0x00)
                }
                ElseIf ((0x02 == Arg0))
                {
                    \ILNF = 0x00
                    BBLS = 0x01
                    Return (0x00)
                }
                Else
                {
                    Return (0x01)
                }
            }

            Method (GLSI, 0, NotSerialized)
            {
                If (\H8DR)
                {
                    Return ((0x02 + \_SB.PCI0.LPC.EC.HPLD))
                }
                ElseIf ((\RBEC (0x46) & 0x04))
                {
                    Return (0x03)
                }
                Else
                {
                    Return (0x02)
                }
            }
        }

        Scope (\_SB.PCI0.LPC.EC.HKEY)
        {
            Method (GDLN, 0, NotSerialized)
            {
                Return ((0x02 | \PLUX))
            }

            Method (SDLN, 1, NotSerialized)
            {
                If ((0x01 == Arg0))
                {
                    \PLUX = 0x01
                    Return (0x00)
                }
                ElseIf ((0x02 == Arg0))
                {
                    \PLUX = 0x00
                    Return (0x00)
                }
                Else
                {
                    Return (0x01)
                }
            }
        }

        Name (\VHCC, 0x00)
        Scope (\_SB.PCI0.PEG.VID)
        {
            Method (ISOP, 0, NotSerialized)
            {
                Return ((VDSP && (VIGD && VDSC)))
            }
        }

        Scope (\_SB.PCI0)
        {
            Name (OTM, "OTMACPI 2009-Nov-12 18:18:51")
        }

        Scope (\_SB.PCI0.PEG.VID)
        {
            Method (GOBT, 1, NotSerialized)
            {
                Name (OPVK, Buffer (0xE6)
                {
                    /* 0000 */  0xE4, 0xB8, 0x4F, 0x51, 0x50, 0x72, 0x8A, 0xC2,
                    /* 0008 */  0x4B, 0x56, 0xE6, 0x00, 0x00, 0x00, 0x01, 0x00,
                    /* 0010 */  0x31, 0x34, 0x38, 0x35, 0x39, 0x37, 0x34, 0x35,
                    /* 0018 */  0x36, 0x39, 0x38, 0x35, 0x47, 0x65, 0x6E, 0x75,
                    /* 0020 */  0x69, 0x6E, 0x65, 0x20, 0x4E, 0x56, 0x49, 0x44,
                    /* 0028 */  0x49, 0x41, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69,
                    /* 0030 */  0x66, 0x69, 0x65, 0x64, 0x20, 0x4F, 0x70, 0x74,
                    /* 0038 */  0x69, 0x6D, 0x75, 0x73, 0x20, 0x52, 0x65, 0x61,
                    /* 0040 */  0x64, 0x79, 0x20, 0x4D, 0x6F, 0x74, 0x68, 0x65,
                    /* 0048 */  0x72, 0x62, 0x6F, 0x61, 0x72, 0x64, 0x20, 0x66,
                    /* 0050 */  0x6F, 0x72, 0x20, 0x36, 0x38, 0x38, 0x33, 0x32,
                    /* 0058 */  0x35, 0x6E, 0x6F, 0x7A, 0x6F, 0x6D, 0x69, 0x32,
                    /* 0060 */  0x31, 0x44, 0x35, 0x20, 0x20, 0x20, 0x20, 0x20,
                    /* 0068 */  0x2D, 0x20, 0x40, 0x4A, 0x20, 0x24, 0x55, 0x27,
                    /* 0070 */  0x5C, 0x22, 0x54, 0x20, 0x29, 0x5F, 0x47, 0x42,
                    /* 0078 */  0x20, 0x50, 0x2F, 0x41, 0x4F, 0x5C, 0x37, 0x22,
                    /* 0080 */  0x3D, 0x46, 0x37, 0x39, 0x4B, 0x37, 0x2B, 0x5F,
                    /* 0088 */  0x3F, 0x4B, 0x48, 0x5C, 0x5F, 0x46, 0x58, 0x48,
                    /* 0090 */  0x5F, 0x44, 0x57, 0x32, 0x26, 0x4A, 0x46, 0x50,
                    /* 0098 */  0x52, 0x25, 0x24, 0x2F, 0x46, 0x24, 0x20, 0x2D,
                    /* 00A0 */  0x20, 0x43, 0x6F, 0x70, 0x79, 0x72, 0x69, 0x67,
                    /* 00A8 */  0x68, 0x74, 0x20, 0x32, 0x30, 0x31, 0x30, 0x20,
                    /* 00B0 */  0x4E, 0x56, 0x49, 0x44, 0x49, 0x41, 0x20, 0x43,
                    /* 00B8 */  0x6F, 0x72, 0x70, 0x6F, 0x72, 0x61, 0x74, 0x69,
                    /* 00C0 */  0x6F, 0x6E, 0x20, 0x41, 0x6C, 0x6C, 0x20, 0x52,
                    /* 00C8 */  0x69, 0x67, 0x68, 0x74, 0x73, 0x20, 0x52, 0x65,
                    /* 00D0 */  0x73, 0x65, 0x72, 0x76, 0x65, 0x64, 0x2D, 0x31,
                    /* 00D8 */  0x34, 0x38, 0x35, 0x39, 0x37, 0x34, 0x35, 0x36,
                    /* 00E0 */  0x39, 0x38, 0x35, 0x28, 0x52, 0x29             
                })
                CreateWordField (Arg0, 0x02, USRG)
                If ((USRG == 0x564B))
                {
                    Return (OPVK)
                }

                Return (Zero)
            }
        }

        Scope (\_SB.PCI0.PEG.VID)
        {
            Name (OMPR, 0x02)
            Name (HDAS, 0x00)
            Method (NVOP, 4, Serialized)
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                Debug = "------- NV OPTIMUS DSM --------"
                If ((Arg1 != 0x0100))
                {
                    Return (0x80000001)
                }

                While (One)
                {
                    _T_0 = ToInteger (Arg2)
                    If ((_T_0 == 0x00))
                    {
                        Local0 = Buffer (0x04)
                            {
                                 0x00, 0x00, 0x00, 0x00                         
                            }
                        Divide (0x00, 0x08, Local2, Local1)
                        Local2 = (0x01 << Local2)
                        Local0 [Local1] = (DerefOf (Local0 [Local1]) | Local2)
                        Divide (0x1A, 0x08, Local2, Local1)
                        Local2 = (0x01 << Local2)
                        Local0 [Local1] = (DerefOf (Local0 [Local1]) | Local2)
                        Divide (0x1B, 0x08, Local2, Local1)
                        Local2 = (0x01 << Local2)
                        Local0 [Local1] = (DerefOf (Local0 [Local1]) | Local2)
                        Divide (0x10, 0x08, Local2, Local1)
                        Local2 = (0x01 << Local2)
                        Local0 [Local1] = (DerefOf (Local0 [Local1]) | Local2)
                        Return (Local0)
                    }
                    ElseIf ((_T_0 == 0x1A))
                    {
                        CreateField (Arg3, 0x18, 0x02, OPCE)
                        CreateField (Arg3, 0x00, 0x01, FLCH)
                        If (ToInteger (FLCH))
                        {
                            OMPR = OPCE
                        }

                        Local0 = Buffer (0x04)
                            {
                                 0x00, 0x00, 0x00, 0x00                         
                            }
                        CreateField (Local0, 0x00, 0x01, OPEN)
                        CreateField (Local0, 0x03, 0x02, CGCS)
                        CreateField (Local0, 0x06, 0x01, SHPC)
                        CreateField (Local0, 0x18, 0x03, DGPC)
                        CreateField (Local0, 0x1B, 0x02, HDAC)
                        OPEN = One
                        SHPC = One
                        DGPC = One
                        If (\_SB.PCI0.PEG.VID._STA ())
                        {
                            CGCS = 0x03
                        }

                        HDAC = 0x02
                        Return (Local0)
                    }
                    ElseIf ((_T_0 == 0x1B))
                    {
                        CreateField (Arg3, 0x00, 0x01, HDAU)
                        CreateField (Arg3, 0x01, 0x01, HDAR)
                        Local0 = Buffer (0x04)
                            {
                                 0x00, 0x00, 0x00, 0x00                         
                            }
                        CreateField (Local0, 0x02, 0x02, RQGS)
                        CreateField (Local0, 0x04, 0x01, PWST)
                        PWST = One
                        RQGS = Zero
                        If (ToInteger (HDAR))
                        {
                            HDAS = ToInteger (HDAU)
                        }

                        Return (Local0)
                    }
                    ElseIf ((_T_0 == 0x10))
                    {
                        Return (\_SB.PCI0.PEG.VID.GOBT (Arg3))
                    }

                    Break
                }

                Return (0x80000002)
            }
        }

        Scope (\)
        {
            Method (CMPB, 2, NotSerialized)
            {
                Local1 = SizeOf (Arg0)
                If ((Local1 != SizeOf (Arg1)))
                {
                    Return (0x00)
                }

                Local0 = 0x00
                While ((Local0 < Local1))
                {
                    If ((DerefOf (Arg0 [Local0]) != DerefOf (Arg1 [Local0])))
                    {
                        Return (0x00)
                    }

                    Local0++
                }

                Return (0x01)
            }
        }

        Scope (\_SB.PCI0.PEG.VID)
        {
            OperationRegion (PEGA, PCI_Config, 0x00, 0x04)
            Field (PEGA, DWordAcc, NoLock, Preserve)
            {
                GDID,   32
            }

            Name (CPPC, 0x00)
            Method (NVPS, 4, Serialized)
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                Debug = "------- NV GPS DSM --------"
                While (One)
                {
                    _T_0 = ToInteger (Arg2)
                    If ((_T_0 == 0x00))
                    {
                        Local0 = Buffer (0x08)
                            {
                                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                            }
                        Local3 = Buffer (0x07)
                            {
                                 0x00, 0x20, 0x21, 0x22, 0x23, 0x2A, 0xFF       
                            }
                        Local4 = Zero
                        Local5 = DerefOf (Local3 [Local4])
                        While ((Local5 != 0xFF))
                        {
                            Divide (Local5, 0x08, Local2, Local1)
                            Local2 = (0x01 << Local2)
                            Local0 [Local1] = (DerefOf (Local0 [Local1]) | Local2)
                            Local4++
                            Local5 = DerefOf (Local3 [Local4])
                        }

                        Return (Local0)
                    }
                    ElseIf ((_T_0 == 0x20))
                    {
                        Local0 = Buffer (0x04)
                            {
                                 0x00, 0x00, 0x00, 0x00                         
                            }
                        CreateField (Local0, 0x18, 0x01, CUIT)
                        CreateField (Local0, 0x1E, 0x01, PSER)
                        CUIT = One
                        PSER = One
                        Local1 = \_SB.PCI0.LPC.EC.LPMD ()
                        If (!Local1)
                        {
                            PSER = 0x01
                        }
                        Else
                        {
                            PSER = 0x00
                        }

                        Return (Local0)
                    }
                    ElseIf ((_T_0 == 0x21))
                    {
                        Return (\_PR.CPU0._PSS)
                    }
                    ElseIf ((_T_0 == 0x22))
                    {
                        CreateField (Arg3, 0x00, 0x08, PPCV)
                        CPPC = PPCV
                        \PNTF (0x80)
                        Return (Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                         
                        })
                    }
                    ElseIf ((_T_0 == 0x23))
                    {
                        Local0 = Buffer (0x04)
                            {
                                 0x00, 0x00, 0x00, 0x00                         
                            }
                        Local0 [0x00] = CPPC
                        Return (Local0)
                    }
                    ElseIf ((_T_0 == 0x2A))
                    {
                        Local0 = Buffer (0x24)
                            {
                                /* 0000 */  0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00,
                                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0020 */  0x00, 0x00, 0x00, 0x00                         
                            }
                        Local0 [0x00] = DerefOf (Arg3 [0x00])
                        CreateField (Arg3, 0x00, 0x04, QTYP)
                        CreateBitField (Arg3, 0x08, GPUT)
                        While (One)
                        {
                            _T_1 = ToInteger (QTYP)
                            If ((_T_1 == 0x00))
                            {
                                Local1 = \_SB.PCI0.LPC.EC.TMP0
                                Local0 [0x0C] = (Local1 & 0xFF)
                                Return (Local0)
                            }
                            ElseIf ((_T_1 == 0x01))
                            {
                                Local0 [0x0D] = 0x08
                                Local0 [0x01] = 0x03
                                If (GPUT)
                                {
                                    Local0 [0x01] = 0x03
                                }

                                Return (Local0)
                            }
                            ElseIf ((_T_1 == 0x02))
                            {
                                Local0 [0x01] = Zero
                                If ((GDID == 0x129210DE))
                                {
                                    If (GPUT)
                                    {
                                        Local0 [0x01] = 0x01
                                        Local0 [0x00] = 0x02
                                        Local0 [0x08] = 0x53
                                    }
                                }

                                Return (Local0)
                            }

                            Break
                        }
                    }

                    Break
                }

                Return (Buffer (0x04)
                {
                     0x02, 0x00, 0x00, 0x80                         
                })
            }
        }

        Scope (\_SB.PCI0.PEG.VID)
        {
            Name (GPCS, 0x00)
            Name (TGPS, 0x00)
            Name (TRSE, 0x00)
            Name (DPST, 0x00)
            Name (TGPC, Buffer (0x04)
            {
                 0x00                                           
            })
            Method (W1MS, 1, Serialized)
            {
                Local0 = Zero
                While ((Local0 < 0x1E))
                {
                    Local0 += One
                    Stall (0x32)
                }
            }

            Method (GC6I, 0, Serialized)
            {
                Debug = "<<< GC6I >>>"
                While ((FBCL == 0x00))
                {
                    Stall (0x32)
                }

                PFBR = Zero
                \VHYB (0x08, 0x00)
                While ((\LCHK (0x00) == 0x00))
                {
                    Stall (0x32)
                }

                \VHYB (0x08, 0x02)
                DGRS = 0x00
                Stall (0x14)
                DGPW = 0x00
                Stall (0x14)
                NVPW = 0x00
                GATY = 0x03
                TGPS = 0x03
            }

            Method (GC6O, 0, Serialized)
            {
                Debug = "<<< GC6O >>>"
                DGRS = 0x00
                DGPW = 0x01
                W1MS (0x01)
                NVPW = 0x01
                While ((GP17 != 0x01))
                {
                    Stall (0x32)
                }

                PFBR = One
                W1MS (0x01)
                W1MS (0x01)
                DGRS = 0x01
                \VHYB (0x08, 0x01)
                \VHYB (0x08, 0x03)
                Local0 = 0x01
                Local1 = 0x01F4
                While (VCNP)
                {
                    Sleep (Local0)
                    Local1--
                }

                While ((\LCHK (0x01) == 0x00))
                {
                    Stall (0x32)
                }

                GATY = 0x01
                TGPS = One
            }

            Method (NVGC, 4, Serialized)
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                Debug = "<<< Optimus GC6 >>>"
                If ((ToInteger (Arg1) < 0x0100))
                {
                    Return (0x80000001)
                }

                While (One)
                {
                    _T_0 = ToInteger (Arg2)
                    If ((_T_0 == Zero))
                    {
                        Return (Buffer (0x04)
                        {
                             0x7F, 0x00, 0x00, 0x00                         
                        })
                    }
                    ElseIf ((_T_0 == 0x02))
                    {
                        Debug = "JT fun2 JT_FUNC_POLICYSELECT"
                        Return (0x80000002)
                    }
                    ElseIf ((_T_0 == 0x01))
                    {
                        Debug = "JT fun1 JT_FUNC_CAPS"
                        Name (JTCA, Buffer (0x04)
                        {
                             0x00                                           
                        })
                        CreateField (JTCA, 0x00, 0x01, JTEN)
                        CreateField (JTCA, 0x01, 0x02, SREN)
                        CreateField (JTCA, 0x03, 0x03, PLPR)
                        CreateField (JTCA, 0x06, 0x02, FBPR)
                        CreateField (JTCA, 0x08, 0x02, GUPR)
                        CreateField (JTCA, 0x0A, 0x01, GC6R)
                        CreateField (JTCA, 0x0B, 0x01, PTRH)
                        CreateField (JTCA, 0x14, 0x0C, JTRV)
                        JTEN = 0x01
                        SREN = 0x01
                        GC6R = 0x01
                        JTRV = 0x0103
                        Return (JTCA)
                    }
                    ElseIf ((_T_0 == 0x03))
                    {
                        Debug = "JT fun3 JT_FUNC_POWERCONTROL"
                        CreateField (Arg3, 0x00, 0x03, GUPC)
                        CreateField (Arg3, 0x04, 0x01, PLPC)
                        CreateField (Arg3, 0x07, 0x01, ECOC)
                        GPCS = ToInteger (GUPC)
                        Name (JTPC, Buffer (0x04)
                        {
                             0x00                                           
                        })
                        CreateField (JTPC, 0x00, 0x03, GUPS)
                        CreateField (JTPC, 0x03, 0x01, PWOK)
                        CreateField (JTPC, 0x07, 0x01, PLST)
                        While (One)
                        {
                            _T_1 = ToInteger (GUPC)
                            If ((_T_1 == 0x00))
                            {
                                D80P = 0x00
                                If ((GP17 == One))
                                {
                                    PWOK = One
                                    TGPS = One
                                }
                                Else
                                {
                                    PWOK = Zero
                                    If ((FBCL == 0x00))
                                    {
                                        TGPS = 0x02
                                    }
                                    Else
                                    {
                                        TGPS = 0x03
                                    }
                                }
                            }
                            ElseIf ((_T_1 == One))
                            {
                                D80P = 0x01
                                GC6I ()
                                PWOK = Zero
                                PLST = One
                            }
                            ElseIf ((_T_1 == 0x02))
                            {
                                D80P = 0x02
                                GC6I ()
                                PWOK = Zero
                                If ((ToInteger (PLPC) == 0x00))
                                {
                                    PLST = 0x00
                                }
                            }
                            ElseIf ((_T_1 == 0x03))
                            {
                                D80P = 0x03
                                GC6O ()
                                PWOK = One
                                If ((ToInteger (PLPC) != Zero))
                                {
                                    PLST = Zero
                                }
                            }
                            ElseIf ((_T_1 == 0x04))
                            {
                                D80P = 0x04
                                PWOK = One
                                If ((ToInteger (PLPC) != 0x00))
                                {
                                    PLST = 0x00
                                }

                                GUPS = 0x01
                            }
                            ElseIf ((_T_1 == 0x06))
                            {
                                If ((ToInteger (PLPC) != 0x00))
                                {
                                    PLST = 0x00
                                }

                                GUPS = 0x01
                                TRSE = Zero
                            }

                            Break
                        }

                        GUPS = TGPS
                        Return (JTPC)
                    }
                    ElseIf ((_T_0 == 0x04))
                    {
                        Return (0x80000002)
                    }

                    Break
                }

                Return (0x80000002)
            }
        }
    }

    Name (\_S0, Package (0x04)  // _S0_: S0 System State
    {
        0x00, 
        0x00, 
        0x00, 
        0x00
    })
    Name (\_S3, Package (0x04)  // _S3_: S3 System State
    {
        0x05, 
        0x05, 
        0x00, 
        0x00
    })
    Name (\_S4, Package (0x04)  // _S4_: S4 System State
    {
        0x06, 
        0x06, 
        0x00, 
        0x00
    })
    Name (\_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07, 
        0x07, 
        0x00, 
        0x00
    })
    Method (\_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        \_SB.PCI0.PEG.VID._PS0()
        D80P = Arg0
        Local0 = 0x01
        If ((Arg0 == \SPS))
        {
            Local0 = 0x00
        }

        If (((Arg0 == 0x00) || (Arg0 >= 0x06)))
        {
            Local0 = 0x00
        }

        If (Local0)
        {
            \SPS = Arg0
            \_SB.PCI0.LPC.EC.HKEY.MHKE (0x00)
            If (\_SB.PCI0.LPC.EC.KBLT)
            {
                \UCMS (0x0D)
            }

            If ((Arg0 == 0x01))
            {
                \FNID = \_SB.PCI0.LPC.EC.HFNI
                \_SB.PCI0.LPC.EC.HFNI = 0x00
                \_SB.PCI0.LPC.EC.HFSP = 0x00
            }

            If ((Arg0 == 0x03))
            {
                \VVPD (0x03)
                \TRAP ()
                \ACST = \_SB.PCI0.LPC.EC.AC._PSR ()
                If ((\FNWK == 0x01))
                {
                    If (\H8DR)
                    {
                        \_SB.PCI0.LPC.EC.HWFN = 0x00
                    }
                    Else
                    {
                        \MBEC (0x32, 0xEF, 0x00)
                    }
                }
            }

            If ((Arg0 == 0x04))
            {
                If (VDSP)
                {
                    SHA1 = Zero
                }

                \TRAP ()
                \_SB.PCI0.LPC.TPM.CMOR ()
                \AWON (0x04)
            }

            If ((Arg0 == 0x05))
            {
                \TRAP ()
                \_SB.PCI0.LPC.TPM.CMOR ()
                \AWON (0x05)
            }

            If ((Arg0 >= 0x04))
            {
                \_SB.PCI0.LPC.EC.HWLB = 0x00
            }
            Else
            {
                \_SB.PCI0.LPC.EC.HWLB = 0x01
            }

            If ((Arg0 >= 0x03))
            {
                \_SB.PCI0.LPC.EC.HCMU = 0x01
            }

            If ((Arg0 != 0x05))
            {
                \_SB.PCI0.EXP3.PDSF = \_SB.PCI0.EXP3.PDS
            }

            \_SB.PCI0.LPC.EC.HKEY.WGPS (Arg0)
        }
    }

    Name (WAKI, Package (0x02)
    {
        0x00, 
        0x00
    })
    Method (\_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        \_SB.PCI0.PEG.VID.OMPR = 0x03
        \_SB.PCI0.PEG.VID._PS3()
        D80P = (Arg0 << 0x04)
        If (((Arg0 == 0x00) || (Arg0 >= 0x05)))
        {
            Return (WAKI)
        }

        \SPS = 0x00
        \_SB.PCI0.LPC.EC.HCMU = 0x00
        \_SB.PCI0.LPC.EC.EVNT (0x01)
        \_SB.PCI0.LPC.EC.HKEY.MHKE (0x01)
        \_SB.PCI0.LPC.EC.FNST ()
        \UCMS (0x0D)
        \LIDB = 0x00
        If ((Arg0 == 0x01))
        {
            \FNID = \_SB.PCI0.LPC.EC.HFNI
        }

        If ((Arg0 == 0x03))
        {
            \NVSS (0x00)
            \PWRS = \_SB.PCI0.LPC.EC.AC._PSR ()
            If (\OSC4)
            {
                \PNTF (0x81)
            }

            If (\SCRM)
            {
                \_SB.PCI0.LPC.EC.HFSP = 0x07
                If (\MTAU)
                {
                    Local2 = 0x03E8
                    While ((\_SB.PCI0.LPC.EC.PIBS && Local2))
                    {
                        Sleep (0x01)
                        Local2--
                    }

                    If (Local2)
                    {
                        \_SB.PCI0.LPC.EC.PLSL = 0x01
                        \_SB.PCI0.LPC.EC.PLTU = \MTAU
                        \_SB.PCI0.LPC.EC.PLLS = \PL1L
                        \_SB.PCI0.LPC.EC.PLMS = \PL1M
                    }
                }
            }

            \IOEN = 0x00
            \IOST = 0x00
            If ((\ISWK == 0x01))
            {
                If (\_SB.PCI0.LPC.EC.HKEY.DHKC)
                {
                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6070)
                }
            }

            If (\VIGD)
            {
                \_SB.PCI0.IGPU.GLIS (\_SB.LID._LID ())
                If (\WVIS)
                {
                    \VBTD ()
                }
            }
            ElseIf (\WVIS)
            {
                \_SB.PCI0.IGPU.GLIS (\_SB.LID._LID ())
                \VBTD ()
            }

            \VCMS (0x01, \_SB.LID._LID ())
            \AWON (0x00)
            If (\CMPR)
            {
                Notify (\_SB.LID, 0x02)
                \CMPR = 0x00
            }

            If ((\USBR || \_SB.PCI0.XHC.XRST))
            {
                If (((\XHC == 0x02) || (\XHC == 0x03)))
                {
                    Local0 = 0x00
                    Local0 = (\_SB.PCI0.XHC.PR3 & 0xFFFFFFC0)
                    \_SB.PCI0.XHC.PR3 = (Local0 | \_SB.PCI0.XHC.PR3M)
                    Local0 = 0x00
                    Local0 = (\_SB.PCI0.XHC.PR2 & 0xFFFF8000)
                    \_SB.PCI0.XHC.PR2 = (Local0 | \_SB.PCI0.XHC.PR2M)
                    If (((\WIN8 == 0x00) && \WIN7))
                    {
                        \_SB.PCI0.XHC.PR2 &= 0xFFFFFFEF
                    }

                    If ((\WIN8 == 0x01))
                    {
                        \_SB.PCI0.XHC.PR2 &= 0xFFFFFFEF
                    }
                }
            }

            If ((\ISCT != 0x00))
            {
                If (\_SB.PCI0.LPC.EC.AAST)
                {
                    If (\VIGD)
                    {
                        If ((\_SB.PCI0.IGPU.TCHE & 0x0100))
                        {
                            If ((\_SB.IAOE.GAOS & 0x01))
                            {
                                If ((\_SB.IAOE.GSWR & 0x0A))
                                {
                                    \_SB.PCI0.IGPU.STAT = ((\_SB.PCI0.IGPU.STAT & ~0x03) | 0x01)
                                    \_SB.PCI0.LPC.EC.SKEM = 0x01
                                }
                            }
                        }
                    }
                }
            }
        }

        If ((Arg0 == 0x04))
        {
            \NVSS (0x00)
            \_SB.PCI0.LPC.EC.HKEY.WGIN ()
            \_SB.PCI0.LPC.EC.HSPA = 0x00
            \PWRS = \_SB.PCI0.LPC.EC.AC._PSR ()
            If (\OSC4)
            {
                \PNTF (0x81)
            }

            If (\SCRM)
            {
                \_SB.PCI0.LPC.EC.HFSP = 0x07
                If (\MTAU)
                {
                    Local2 = 0x03E8
                    While ((\_SB.PCI0.LPC.EC.PIBS && Local2))
                    {
                        Sleep (0x01)
                        Local2--
                    }

                    If (Local2)
                    {
                        \_SB.PCI0.LPC.EC.PLSL = 0x01
                        \_SB.PCI0.LPC.EC.PLTU = \MTAU
                        \_SB.PCI0.LPC.EC.PLLS = \PL1L
                        \_SB.PCI0.LPC.EC.PLMS = \PL1M
                    }
                }
            }

            If (!\NBCF)
            {
                If (\VIGD)
                {
                    \_SB.PCI0.LPC.EC.BRNS ()
                }
                Else
                {
                    \VBRC (\BRLV)
                }
            }

            \IOEN = 0x00
            \IOST = 0x00
            If ((\ISWK == 0x02))
            {
                If (\_SB.PCI0.LPC.EC.HKEY.DHKC)
                {
                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6080)
                }
            }

            If (\_SB.PCI0.XHC.XRST)
            {
                If (((\XHC == 0x02) || (\XHC == 0x03)))
                {
                    Local0 = 0x00
                    Local0 = (\_SB.PCI0.XHC.PR3 & 0xFFFFFFC0)
                    \_SB.PCI0.XHC.PR3 = (Local0 | \_SB.PCI0.XHC.PR3M)
                    Local0 = 0x00
                    Local0 = (\_SB.PCI0.XHC.PR2 & 0xFFFF8000)
                    \_SB.PCI0.XHC.PR2 = (Local0 | \_SB.PCI0.XHC.PR2M)
                    If (((\WIN8 == 0x00) && \WIN7))
                    {
                        \_SB.PCI0.XHC.PR2 &= 0xFFFFFFEF
                    }

                    If ((\WIN8 == 0x01))
                    {
                        \_SB.PCI0.XHC.PR2 &= 0xFFFFFFEF
                    }
                }
            }
        }

        If ((\_SB.PCI0.EXP3.PDS ^ \_SB.PCI0.EXP3.PDSF))
        {
            \_SB.PCI0.EXP3.PDSF = \_SB.PCI0.EXP3.PDS
            Notify (\_SB.PCI0.EXP3, 0x00)
        }

        \_SB.PCI0.LPC.EC.BATW (Arg0)
        \_SB.PCI0.LPC.EC.HKEY.WGWK (Arg0)
        \VSLD (\_SB.LID._LID ())
        If (\VIGD)
        {
            \_SB.PCI0.IGPU.GLIS (\_SB.LID._LID ())
        }
        ElseIf (\WVIS)
        {
            \_SB.PCI0.IGPU.GLIS (\_SB.LID._LID ())
        }

        If ((Arg0 < 0x04))
        {
            If ((\RRBF & 0x02))
            {
                Local0 = (Arg0 << 0x08)
                Local0 = (0x2013 | Local0)
                \_SB.PCI0.LPC.EC.HKEY.MHKQ (Local0)
            }
        }

        If ((Arg0 == 0x04))
        {
            Local0 = 0x00
            Local1 = \CSUM (0x00)
            If ((Local1 != \CHKC))
            {
                Local0 = 0x01
                \CHKC = Local1
            }

            Local1 = \CSUM (0x01)
            If ((Local1 != \CHKE))
            {
                Local0 = 0x01
                \CHKE = Local1
            }

            If (Local0)
            {
                Notify (\_SB, 0x00)
            }
        }

        \RRBF = Zero
        Return (WAKI)
    }

    Scope (\_SI)
    {
        Method (_SST, 1, NotSerialized)  // _SST: System Status
        {
            If ((Arg0 == 0x00))
            {
                \_SB.PCI0.LPC.EC.LED (0x00, 0x00)
                \_SB.PCI0.LPC.EC.LED (0x0A, 0x00)
                \_SB.PCI0.LPC.EC.LED (0x07, 0x00)
            }

            If ((Arg0 == 0x01))
            {
                If ((\SPS || \WNTF))
                {
                    \_SB.PCI0.LPC.EC.BEEP (0x05)
                }

                \_SB.PCI0.LPC.EC.LED (0x00, 0x80)
                \_SB.PCI0.LPC.EC.LED (0x0A, 0x80)
                \_SB.PCI0.LPC.EC.LED (0x07, 0x00)
            }

            If ((Arg0 == 0x02))
            {
                \_SB.PCI0.LPC.EC.LED (0x00, 0xC0)
                \_SB.PCI0.LPC.EC.LED (0x0A, 0xC0)
                \_SB.PCI0.LPC.EC.LED (0x07, 0xC0)
            }

            If ((Arg0 == 0x03))
            {
                If ((\SPS > 0x03))
                {
                    \_SB.PCI0.LPC.EC.BEEP (0x07)
                }
                ElseIf ((\SPS == 0x03))
                {
                    \_SB.PCI0.LPC.EC.BEEP (0x03)
                }
                Else
                {
                    \_SB.PCI0.LPC.EC.BEEP (0x04)
                }

                If ((\SPS == 0x03)) {}
                Else
                {
                    \_SB.PCI0.LPC.EC.LED (0x00, 0x80)
                }

                \_SB.PCI0.LPC.EC.LED (0x00, 0xC0)
                Stall (0x32)
            }

            If ((Arg0 == 0x04))
            {
                \_SB.PCI0.LPC.EC.BEEP (0x03)
                \_SB.PCI0.LPC.EC.LED (0x07, 0xC0)
                \_SB.PCI0.LPC.EC.LED (0x00, 0xC0)
                \_SB.PCI0.LPC.EC.LED (0x0A, 0xC0)
                \_SB.PCI0.LPC.EC.HLCL = 0xC0
            }

            If ((Arg0 >= 0x04))
            {
                \_SB.PCI0.LPC.EC.HWLO = 0x00
            }
        }
    }

    Scope (\_GPE)
    {
        Method (_L1D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Local0 = \_SB.PCI0.LPC.EC.HWAK
            \RRBF = Local0
            Sleep (0x0A)
            If ((Local0 & 0x02)) {}
            If ((Local0 & 0x04))
            {
                Notify (\_SB.LID, 0x02)
            }

            If ((Local0 & 0x08))
            {
                Notify (\_SB.LID, 0x02)
            }

            If ((Local0 & 0x10))
            {
                Notify (\_SB.LID, 0x02)
            }

            If ((Local0 & 0x40)) {}
            If ((Local0 & 0x80))
            {
                Notify (\_SB.LID, 0x02)
            }
        }

        Method (_L09, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (\_SB.PCI0.EXP1.PS)
            {
                \_SB.PCI0.EXP1.PS = 0x01
                \_SB.PCI0.EXP1.PMCS = 0x01
                Notify (\_SB.PCI0.EXP1, 0x02)
            }

            If (\_SB.PCI0.EXP3.PS)
            {
                \_SB.PCI0.EXP3.PS = 0x01
                \_SB.PCI0.EXP3.PMCS = 0x01
                Notify (\_SB.PCI0.EXP3, 0x02)
            }

            If (\_SB.PCI0.EXP4.PS)
            {
                \_SB.PCI0.EXP4.PS = 0x01
                \_SB.PCI0.EXP4.PMCS = 0x01
                Notify (\_SB.PCI0.EXP4, 0x02)
            }

            If (\_SB.PCI0.EXP5.PS)
            {
                \_SB.PCI0.EXP5.PS = 0x01
                \_SB.PCI0.EXP5.PMCS = 0x01
                Notify (\_SB.PCI0.EXP5, 0x02)
            }
        }

        Method (_L01, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (\_SB.PCI0.EXP3.HPCS)
            {
                Sleep (0x64)
                \_SB.PCI0.EXP3.HPCS = 0x01
                If (\_SB.PCI0.EXP3.PDC)
                {
                    \_SB.PCI0.EXP3.PDC = 0x01
                    \_SB.PCI0.EXP3.PDSF = \_SB.PCI0.EXP3.PDS
                    Notify (\_SB.PCI0.EXP3, 0x00)
                }
            }
        }

        Method (_L02, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            \_SB.PCI0.LPC.SWGE = 0x00
            If (CondRefOf (\_SB.PCCD.PENB))
            {
                If ((\_SB.PCCD.PENB == 0x01))
                {
                    Notify (\_SB.PCCD, 0x80)
                }
            }
        }

        Method (_L06, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (\_SB.PCI0.IGPU.GSSE)
            {
                \_SB.PCI0.IGPU.GSCI ()
            }
            Else
            {
                \_SB.PCI0.LPC.SCIS = 0x01
            }
        }

        Name (GPFG, 0x01)
    }

    Name (GPBS, 0x0800)
    Scope (\)
    {
        OperationRegion (PRT0, SystemIO, 0x80, 0x04)
        Field (PRT0, DWordAcc, Lock, Preserve)
        {
            D80P,   32
        }

        OperationRegion (GPR, SystemIO, \GPBS, 0x0400)
        Field (GPR, ByteAcc, NoLock, Preserve)
        {
            GU00,   8, 
            GU01,   8, 
            GU02,   8, 
            GU03,   8, 
            GIO0,   8, 
            GIO1,   8, 
            GIO2,   8, 
            GIO3,   8, 
            Offset (0x0C), 
            GL00,   8, 
            GL01,   8, 
            GL02,   8, 
            GP24,   1, 
                ,   2, 
            GP27,   1, 
            GP28,   1, 
            Offset (0x10), 
            Offset (0x18), 
            GB00,   8, 
            GB01,   8, 
            GB02,   8, 
            GB03,   8, 
            Offset (0x2C), 
            GIV0,   8, 
            GIV1,   8, 
            GIV2,   8, 
            GIV3,   8, 
            GU04,   8, 
            GU05,   8, 
            GU06,   8, 
            GU07,   8, 
            GIO4,   8, 
            GIO5,   8, 
            GIO6,   8, 
            GIO7,   8, 
            GL04,   8, 
            GL05,   8, 
            GL06,   8, 
            GL07,   8, 
            Offset (0x40), 
            GU08,   8, 
            GU09,   8, 
            GU0A,   8, 
            GU0B,   8, 
            GIO8,   8, 
            GIO9,   8, 
            GIOA,   8, 
            GIOB,   8, 
            GL08,   8, 
            GL09,   8, 
            GL0A,   8, 
            GL0B,   8
        }

        OperationRegion (GPRL, SystemIO, \GPBS, 0x64)
        Field (GPRL, ByteAcc, NoLock, Preserve)
        {
            Offset (0x04), 
                ,   3, 
            GOI3,   1, 
            Offset (0x05), 
            Offset (0x0C), 
                ,   1, 
            GO01,   1, 
                ,   1, 
            GO03,   1, 
            GO04,   1, 
            GO05,   1, 
            GO06,   1, 
                ,   3, 
            GO10,   1, 
                ,   4, 
            GO15,   1, 
                ,   6, 
            GO22,   1, 
            GO23,   1, 
            GO24,   1, 
            Offset (0x38), 
                ,   2, 
            GO34,   1, 
                ,   1, 
            GO36,   1, 
                ,   2, 
            GO39,   1, 
            Offset (0x48), 
                ,   4, 
            GO68,   1, 
            GO69,   1, 
                ,   1, 
            GO71,   1
        }

        OperationRegion (PMI, SystemIO, 0x1800, 0x64)
        Field (PMI, AnyAcc, NoLock, Preserve)
        {
            Offset (0x20), 
            Offset (0x22), 
                ,   3, 
            GPS3,   1, 
            Offset (0x28), 
            Offset (0x2A), 
                ,   3, 
            GPE3,   1, 
                ,   7
        }
    }

    Scope (\_SB.PCI0.LPC.EC.HKEY)
    {
        Method (MHQT, 1, NotSerialized)
        {
            If ((\WNTF && \TATC))
            {
                If ((Arg0 == 0x00))
                {
                    Local0 = \TATC
                    Return (Local0)
                }
                ElseIf ((Arg0 == 0x01))
                {
                    Local0 = \TDFA
                    Local0 += (\TDTA << 0x04)
                    Local0 += (\TDFD << 0x08)
                    Local0 += (\TDTD << 0x0C)
                    Local0 += (\TNFT << 0x10)
                    Local0 += (\TNTT << 0x14)
                    Return (Local0)
                }
                ElseIf ((Arg0 == 0x02))
                {
                    Local0 = \TCFA
                    Local0 += (\TCTA << 0x04)
                    Local0 += (\TCFD << 0x08)
                    Local0 += (\TCTD << 0x0C)
                    Return (Local0)
                }
                ElseIf ((Arg0 == 0x03)) {}
                ElseIf ((Arg0 == 0x04))
                {
                    Local0 = \TATW
                    Return (Local0)
                }
                Else
                {
                    Noop
                }
            }

            Return (0x00)
        }

        Method (MHAT, 1, NotSerialized)
        {
            If ((\WNTF && \TATC))
            {
                Local0 = (Arg0 & 0xFF)
                If (!ATMV (Local0))
                {
                    Return (0x00)
                }

                Local0 = ((Arg0 >> 0x08) & 0xFF)
                If (!ATMV (Local0))
                {
                    Return (0x00)
                }

                \TCFA = (Arg0 & 0x0F)
                \TCTA = ((Arg0 >> 0x04) & 0x0F)
                \TCFD = ((Arg0 >> 0x08) & 0x0F)
                \TCTD = ((Arg0 >> 0x0C) & 0x0F)
                ATMC ()
                If ((\PPMF & 0x0100))
                {
                    Local1 = \FTPS
                    If ((Arg0 & 0x00010000))
                    {
                        \FTPS = 0x01
                    }
                    Else
                    {
                        \FTPS = 0x00
                    }

                    If ((\FTPS ^ Local1))
                    {
                        If ((\OSPX || \CPPX))
                        {
                            \PNTF (0x80)
                        }
                    }
                }

                Local2 = \SCRM
                If ((Arg0 & 0x00040000))
                {
                    \SCRM = 0x01
                    \_SB.PCI0.LPC.EC.HFSP = 0x07
                }
                Else
                {
                    \SCRM = 0x00
                    \_SB.PCI0.LPC.EC.HFSP = 0x80
                }

                Local3 = \ETAU
                If ((Arg0 & 0x00020000))
                {
                    \ETAU = 0x01
                }
                Else
                {
                    \ETAU = 0x00
                }

                If (\MTAU)
                {
                    If (((\SCRM ^ Local2) || (\ETAU ^ Local3)))
                    {
                        Local4 = 0x03E8
                        While (\_SB.PCI0.LPC.EC.PIBS)
                        {
                            Sleep (0x01)
                            Local4--
                            If (!Local4)
                            {
                                Return (0x00)
                            }
                        }

                        \_SB.PCI0.LPC.EC.PLSL = 0x01
                        If ((Arg0 & 0x00060000))
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

                Return (0x01)
            }

            Return (0x00)
        }

        Method (MHGT, 1, NotSerialized)
        {
            If ((\WNTF && \TATC))
            {
                Local0 = 0x01000000
                If ((\PPMF & 0x0100))
                {
                    Local0 |= 0x08000000
                }

                If (\SCRM)
                {
                    Local0 |= 0x10000000
                }

                If (\ETAU)
                {
                    Local0 |= 0x04000000
                }

                If (\FTPS)
                {
                    Local0 |= 0x02000000
                }

                Local0 += (\TSFT << 0x10)
                Local0 += (\TSTT << 0x14)
                Local1 = (Arg0 & 0xFF)
                If (!ATMV (Local1))
                {
                    Local0 |= 0xFFFF
                    Return (Local0)
                }

                Local1 = (Arg0 & 0x0F)
                If ((Local1 == 0x00))
                {
                    Local0 += \TIF0
                }
                ElseIf ((Local1 == 0x01))
                {
                    Local0 += \TIF1
                }
                ElseIf ((Local1 == 0x02))
                {
                    Local0 += \TIF2
                }
                Else
                {
                    Local0 += 0xFF
                }

                Local1 = ((Arg0 >> 0x04) & 0x0F)
                If ((Local1 == 0x00))
                {
                    Local0 += (\TIT0 << 0x08)
                }
                ElseIf ((Local1 == 0x01))
                {
                    Local0 += (\TIT1 << 0x08)
                }
                ElseIf ((Local1 == 0x02))
                {
                    Local0 += (\TIT2 << 0x08)
                }
                Else
                {
                    Local0 += (0xFF << 0x08)
                }

                Return (Local0)
            }

            Return (0x00)
        }

        Method (ATMV, 1, NotSerialized)
        {
            Local1 = (Arg0 & 0x0F)
            Local0 = \TNFT
            If ((Local1 >= Local0))
            {
                Return (0x00)
            }

            Local2 = ((Arg0 >> 0x04) & 0x0F)
            Local0 = \TNTT
            If ((Local2 >= Local0))
            {
                Return (0x00)
            }

            If (\TATL)
            {
                If ((Local1 ^ Local2))
                {
                    Return (0x00)
                }
            }

            Return (0x01)
        }

        Method (MHCT, 1, NotSerialized)
        {
            Local0 = 0x00
            If (\SPEN)
            {
                Local0 = \LWST
                Local0++
                Local0 <<= 0x08
            }

            Local1 = 0x08
            Local1 <<= 0x08
            If ((Arg0 == 0xFFFFFFFF))
            {
                Local1 |= \TPCR
                If (\SPEN)
                {
                    Local0 |= \PPCR
                    If (!(\PPMF && 0x02000000))
                    {
                        Local1 |= 0x80
                    }

                    If (!(\PPMF && 0x08000000))
                    {
                        Local1 |= 0x40
                    }
                }
                Else
                {
                    Local1 |= 0xC0
                }
            }
            Else
            {
                If (((\OSPX || \CPPX) && \SPEN))
                {
                    Local2 = (Arg0 & 0x00FF0000)
                    Local2 >>= 0x10
                    Local0 |= Local2
                    If ((Local2 ^ \PPCR))
                    {
                        \PPCA = Local2
                        \PNTF (0x80)
                    }
                }

                If (\WVIS)
                {
                    Local2 = (Arg0 & 0x1F)
                    Local1 |= Local2
                    If ((Local2 ^ \TPCR))
                    {
                        \TPCA = Local2
                        \PNTF (0x82)
                    }
                }
            }

            Local0 <<= 0x10
            Local0 |= Local1
            Return (Local0)
        }
    }

    Scope (\_SB.PCI0.LPC.EC)
    {
        Method (ATMC, 0, NotSerialized)
        {
            If ((\WNTF && \TATC))
            {
                If (HPAC)
                {
                    Local0 = \TCFA
                    Local1 = \TCTA
                    Local2 = ((Local1 << 0x04) | Local0)
                    Local3 = (Local2 ^ ATMX)
                    ATMX = Local2
                    If ((\TCTA == 0x00))
                    {
                        \TCRT = \TCR0
                        \TPSV = \TPS0
                    }
                    ElseIf ((\TCTA == 0x01))
                    {
                        \TCRT = \TCR1
                        \TPSV = \TPS1
                    }
                    Else
                    {
                    }
                }
                Else
                {
                    Local0 = \TCFD
                    Local1 = \TCTD
                    Local2 = ((Local1 << 0x04) | Local0)
                    Local3 = (Local2 ^ ATMX)
                    ATMX = Local2
                    If ((\TCTD == 0x00))
                    {
                        \TCRT = \TCR0
                        \TPSV = \TPS0
                    }
                    ElseIf ((\TCTD == 0x01))
                    {
                        \TCRT = \TCR1
                        \TPSV = \TPS1
                    }
                    Else
                    {
                    }
                }

                If (Local3)
                {
                    If (\_SB.PCI0.LPC.EC.HKEY.DHKC)
                    {
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6030)
                    }
                }

                Notify (\_TZ.THM0, 0x81)
            }
        }
    }

    Scope (\_TZ)
    {
        ThermalZone (THM0)
        {
            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                Return (C2K (0x7F))
            }

            Method (_TMP, 0, NotSerialized)  // _TMP: Temperature
            {
                If (\H8DR)
                {
                    Local0 = \_SB.PCI0.LPC.EC.TMP0
                    Local1 = \_SB.PCI0.LPC.EC.TSL2
                    Local2 = \_SB.PCI0.LPC.EC.TSL3
                }
                Else
                {
                    Local0 = \RBEC (0x78)
                    Local1 = (\RBEC (0x8A) & 0x7F)
                    Local2 = (\RBEC (0x8B) & 0x7F)
                }

                If ((Local0 == 0x80))
                {
                    Local0 = 0x30
                }

                If (Local2)
                {
                    \TSDL ()
                    Return (C2K (0x80))
                }

                If (!\_SB.PCI0.LPC.EC.HKEY.DHKC)
                {
                    If (Local1)
                    {
                        \TSDL ()
                        Return (C2K (0x80))
                    }
                }

                Return (C2K (Local0))
            }
        }

        Method (C2K, 1, NotSerialized)
        {
            Local0 = ((Arg0 * 0x0A) + 0x0AAC)
            If ((Local0 <= 0x0AAC))
            {
                Local0 = 0x0BB8
            }

            If ((Local0 > 0x0FAC))
            {
                Local0 = 0x0BB8
            }

            Return (Local0)
        }
    }

    Name (GPIC, 0x00)
    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        \GPIC = Arg0
    }

    OperationRegion (SMI0, SystemIO, 0xB2, 0x01)
    Field (SMI0, ByteAcc, NoLock, Preserve)
    {
        APMC,   8
    }

    Field (MNVS, AnyAcc, NoLock, Preserve)
    {
        Offset (0xFC0), 
        CMD,    8, 
        ERR,    32, 
        PAR0,   32, 
        PAR1,   32, 
        PAR2,   32, 
        PAR3,   32
    }

    Mutex(MSMI, 0)
    Method (SMI, 5, NotSerialized)
    {
        Acquire (MSMI, 0xFFFF)
        CMD = Arg0
        ERR = 0x01
        PAR0 = Arg1
        PAR1 = Arg2
        PAR2 = Arg3
        PAR3 = Arg4
        APMC = 0xF5
        While ((ERR == 0x01))
        {
            Sleep (0x01)
            APMC = 0xF5
        }

        Local0 = PAR0
        Release (MSMI)
        Return (Local0)
    }

    Method (RPCI, 1, NotSerialized)
    {
        Return (SMI (0x00, 0x00, Arg0, 0x00, 0x00))
    }

    Method (WPCI, 2, NotSerialized)
    {
        SMI (0x00, 0x01, Arg0, Arg1, 0x00)
    }

    Method (MPCI, 3, NotSerialized)
    {
        SMI (0x00, 0x02, Arg0, Arg1, Arg2)
    }

    Method (RBEC, 1, NotSerialized)
    {
        Return (SMI (0x00, 0x03, Arg0, 0x00, 0x00))
    }

    Method (WBEC, 2, NotSerialized)
    {
        SMI (0x00, 0x04, Arg0, Arg1, 0x00)
    }

    Method (MBEC, 3, NotSerialized)
    {
        SMI (0x00, 0x05, Arg0, Arg1, Arg2)
    }

    Method (RISA, 1, NotSerialized)
    {
        Return (SMI (0x00, 0x06, Arg0, 0x00, 0x00))
    }

    Method (WISA, 2, NotSerialized)
    {
        SMI (0x00, 0x07, Arg0, Arg1, 0x00)
    }

    Method (MISA, 3, NotSerialized)
    {
        SMI (0x00, 0x08, Arg0, Arg1, Arg2)
    }

    Method (VEXP, 0, NotSerialized)
    {
        SMI (0x01, 0x00, 0x00, 0x00, 0x00)
    }

    Method (VUPS, 1, NotSerialized)
    {
        SMI (0x01, 0x01, Arg0, 0x00, 0x00)
    }

    Method (VSDS, 2, NotSerialized)
    {
        SMI (0x01, 0x02, Arg0, Arg1, 0x00)
    }

    Method (VDDC, 0, NotSerialized)
    {
        SMI (0x01, 0x03, 0x00, 0x00, 0x00)
    }

    Method (VVPD, 1, NotSerialized)
    {
        SMI (0x01, 0x04, Arg0, 0x00, 0x00)
    }

    Method (VNRS, 1, NotSerialized)
    {
        SMI (0x01, 0x05, Arg0, 0x00, 0x00)
    }

    Method (GLPW, 0, NotSerialized)
    {
        Return (SMI (0x01, 0x06, 0x00, 0x00, 0x00))
    }

    Method (VSLD, 1, NotSerialized)
    {
        SMI (0x01, 0x07, Arg0, 0x00, 0x00)
    }

    Method (VEVT, 1, NotSerialized)
    {
        Return (SMI (0x01, 0x08, Arg0, 0x00, 0x00))
    }

    Method (VTHR, 0, NotSerialized)
    {
        Return (SMI (0x01, 0x09, 0x00, 0x00, 0x00))
    }

    Method (VBRC, 1, NotSerialized)
    {
        SMI (0x01, 0x0A, Arg0, 0x00, 0x00)
    }

    Method (VBRG, 0, NotSerialized)
    {
        Return (SMI (0x01, 0x0E, 0x00, 0x00, 0x00))
    }

    Method (VCMS, 2, NotSerialized)
    {
        Return (SMI (0x01, 0x0B, Arg0, Arg1, 0x00))
    }

    Method (VBTD, 0, NotSerialized)
    {
        Return (SMI (0x01, 0x0F, 0x00, 0x00, 0x00))
    }

    Method (VHYB, 2, NotSerialized)
    {
        Return (SMI (0x01, 0x10, Arg0, Arg1, 0x00))
    }

    Method (VDYN, 2, NotSerialized)
    {
        Return (SMI (0x01, 0x11, Arg0, Arg1, 0x00))
    }

    Method (UCMS, 1, NotSerialized)
    {
        Return (SMI (0x02, Arg0, 0x00, 0x00, 0x00))
    }

    Method (BHDP, 2, NotSerialized)
    {
        Return (SMI (0x03, 0x00, Arg0, Arg1, 0x00))
    }

    Method (STEP, 1, NotSerialized)
    {
        SMI (0x04, Arg0, 0x00, 0x00, 0x00)
    }

    Method (TRAP, 0, NotSerialized)
    {
        SMI (0x05, 0x00, 0x00, 0x00, 0x00)
    }

    Method (CBRI, 0, NotSerialized)
    {
        SMI (0x05, 0x01, 0x00, 0x00, 0x00)
    }

    Method (BCHK, 0, NotSerialized)
    {
        Return (SMI (0x05, 0x04, 0x00, 0x00, 0x00))
    }

    Method (BYRS, 0, NotSerialized)
    {
        SMI (0x05, 0x05, 0x00, 0x00, 0x00)
    }

    Method (LCHK, 1, NotSerialized)
    {
        Return (SMI (0x05, 0x06, Arg0, 0x00, 0x00))
    }

    Method (BLTH, 1, NotSerialized)
    {
        Return (SMI (0x06, Arg0, 0x00, 0x00, 0x00))
    }

    Method (PRSM, 2, NotSerialized)
    {
        Return (SMI (0x07, 0x00, Arg0, Arg1, 0x00))
    }

    Method (IFRS, 2, NotSerialized)
    {
        Return (SMI (0x07, 0x01, Arg0, Arg1, 0x00))
    }

    Method (TDPC, 1, NotSerialized)
    {
        Return (SMI (0x07, 0x02, Arg0, 0x00, 0x00))
    }

    Method (ISOC, 1, NotSerialized)
    {
        Return (SMI (0x07, 0x03, Arg0, 0x00, 0x00))
    }

    Method (WGSV, 1, NotSerialized)
    {
        Return (SMI (0x09, Arg0, 0x00, 0x00, 0x00))
    }

    Method (SWTT, 1, NotSerialized)
    {
        If (SMI (0x0A, 0x02, Arg0, 0x00, 0x00))
        {
            If (\_SB.PCI0.LPC.EC.HKEY.DHKC)
            {
                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6030)
            }
        }
    }

    Method (TSDL, 0, NotSerialized)
    {
        Return (SMI (0x0A, 0x03, 0x00, 0x00, 0x00))
    }

    Method (SITT, 1, NotSerialized)
    {
        Return (SMI (0x0A, 0x04, Arg0, 0x00, 0x00))
    }

    Method (TPHY, 1, NotSerialized)
    {
        SMI (0x0C, Arg0, 0x00, 0x00, 0x00)
    }

    Method (CSUM, 1, NotSerialized)
    {
        Return (SMI (0x0E, Arg0, 0x00, 0x00, 0x00))
    }

    Method (NVSS, 1, NotSerialized)
    {
        Return (SMI (0x0F, Arg0, 0x00, 0x00, 0x00))
    }

    Method (WMIS, 2, NotSerialized)
    {
        Return (SMI (0x10, Arg0, Arg1, 0x00, 0x00))
    }

    Method (AWON, 1, NotSerialized)
    {
        Return (SMI (0x12, Arg0, 0x00, 0x00, 0x00))
    }

    Method (PMON, 2, NotSerialized)
    {
        Local0 = SizeOf (Arg0)
        Name (TSTR, Buffer (Local0) {})
        TSTR = Arg0
        \DBGS = TSTR
        SMI (0x11, Arg1, 0x00, 0x00, 0x00)
    }

    Method (UAWS, 1, NotSerialized)
    {
        Return (SMI (0x13, Arg0, 0x00, 0x00, 0x00))
    }

    Method (BFWC, 1, NotSerialized)
    {
        Return (SMI (0x14, 0x00, Arg0, 0x00, 0x00))
    }

    Method (BFWP, 0, NotSerialized)
    {
        Return (SMI (0x14, 0x01, 0x00, 0x00, 0x00))
    }

    Method (BFWL, 0, NotSerialized)
    {
        SMI (0x14, 0x02, 0x00, 0x00, 0x00)
    }

    Method (BFWG, 1, NotSerialized)
    {
        SMI (0x14, 0x03, Arg0, 0x00, 0x00)
    }

    Method (BDMC, 1, NotSerialized)
    {
        SMI (0x14, 0x04, Arg0, 0x00, 0x00)
    }

    Method (PSIF, 2, NotSerialized)
    {
        Return (SMI (0x14, 0x05, Arg0, Arg1, 0x00))
    }

    Method (FNSC, 2, NotSerialized)
    {
        Return (SMI (0x14, 0x06, Arg0, Arg1, 0x00))
    }

    Method (AUDC, 2, NotSerialized)
    {
        Return (SMI (0x14, 0x07, Arg0, Arg1, 0x00))
    }

    Method (SYBC, 2, NotSerialized)
    {
        Return (SMI (0x14, 0x08, Arg0, Arg1, 0x00))
    }

    Method (KBLS, 2, NotSerialized)
    {
        Return (SMI (0x14, 0x09, Arg0, Arg1, 0x00))
    }

    Method (CBBM, 2, NotSerialized)
    {
        Return (SMI (0x14, 0x0A, Arg0, Arg1, 0x00))
    }

    Method (UBIS, 1, NotSerialized)
    {
        Return (SMI (0x15, 0x00, Arg0, 0x00, 0x00))
    }

    Method (DIEH, 1, NotSerialized)
    {
        Return (SMI (0x16, 0x00, Arg0, 0x00, 0x00))
    }

    Method (DPIO, 2, NotSerialized)
    {
        If (!Arg0)
        {
            Return (0x00)
        }

        If ((Arg0 > 0xF0))
        {
            Return (0x00)
        }

        If ((Arg0 > 0xB4))
        {
            If (Arg1)
            {
                Return (0x02)
            }
            Else
            {
                Return (0x01)
            }
        }

        If ((Arg0 > 0x78))
        {
            Return (0x03)
        }

        Return (0x04)
    }

    Method (DUDM, 2, NotSerialized)
    {
        If (!Arg1)
        {
            Return (0xFF)
        }

        If ((Arg0 > 0x5A))
        {
            Return (0x00)
        }

        If ((Arg0 > 0x3C))
        {
            Return (0x01)
        }

        If ((Arg0 > 0x2D))
        {
            Return (0x02)
        }

        If ((Arg0 > 0x1E))
        {
            Return (0x03)
        }

        If ((Arg0 > 0x14))
        {
            Return (0x04)
        }

        Return (0x05)
    }

    Method (DMDM, 2, NotSerialized)
    {
        If (Arg1)
        {
            Return (0x00)
        }

        If (!Arg0)
        {
            Return (0x00)
        }

        If ((Arg0 > 0x96))
        {
            Return (0x01)
        }

        If ((Arg0 > 0x78))
        {
            Return (0x02)
        }

        Return (0x03)
    }

    Method (UUDM, 2, NotSerialized)
    {
        If (!(Arg0 & 0x04))
        {
            Return (0x00)
        }

        If ((Arg1 & 0x20))
        {
            Return (0x14)
        }

        If ((Arg1 & 0x10))
        {
            Return (0x1E)
        }

        If ((Arg1 & 0x08))
        {
            Return (0x2D)
        }

        If ((Arg1 & 0x04))
        {
            Return (0x3C)
        }

        If ((Arg1 & 0x02))
        {
            Return (0x5A)
        }

        If ((Arg1 & 0x01))
        {
            Return (0x78)
        }

        Return (0x00)
    }

    Method (UMDM, 4, NotSerialized)
    {
        If (!(Arg0 & 0x02))
        {
            Return (0x00)
        }

        If ((Arg1 & 0x04))
        {
            Return (Arg3)
        }

        If ((Arg1 & 0x02))
        {
            If ((Arg3 <= 0x78))
            {
                Return (0xB4)
            }
            Else
            {
                Return (Arg3)
            }
        }

        If ((Arg2 & 0x04))
        {
            If ((Arg3 <= 0xB4))
            {
                Return (0xF0)
            }
            Else
            {
                Return (Arg3)
            }
        }

        Return (0x00)
    }

    Method (UPIO, 4, NotSerialized)
    {
        If (!(Arg0 & 0x02))
        {
            If ((Arg2 == 0x02))
            {
                Return (0xF0)
            }
            Else
            {
                Return (0x0384)
            }
        }

        If ((Arg1 & 0x02))
        {
            Return (Arg3)
        }

        If ((Arg1 & 0x01))
        {
            If ((Arg3 <= 0x78))
            {
                Return (0xB4)
            }
            Else
            {
                Return (Arg3)
            }
        }

        If ((Arg2 == 0x02))
        {
            Return (0xF0)
        }
        Else
        {
            Return (0x0384)
        }
    }

    Method (FDMA, 2, NotSerialized)
    {
        If ((Arg1 != 0xFF))
        {
            Return ((Arg1 | 0x40))
        }

        If ((Arg0 >= 0x03))
        {
            Return (((Arg0 - 0x02) | 0x20))
        }

        If (Arg0)
        {
            Return (0x12)
        }

        Return (0x00)
    }

    Method (FPIO, 1, NotSerialized)
    {
        If ((Arg0 >= 0x03))
        {
            Return ((Arg0 | 0x08))
        }

        If ((Arg0 == 0x01))
        {
            Return (0x01)
        }

        Return (0x00)
    }

    Method (SCMP, 2, NotSerialized)
    {
        Local0 = SizeOf (Arg0)
        If ((Local0 != SizeOf (Arg1)))
        {
            Return (One)
        }

        Local0++
        Name (STR1, Buffer (Local0) {})
        Name (STR2, Buffer (Local0) {})
        STR1 = Arg0
        STR2 = Arg1
        Local1 = Zero
        While ((Local1 < Local0))
        {
            Local2 = DerefOf (STR1 [Local1])
            Local3 = DerefOf (STR2 [Local1])
            If ((Local2 != Local3))
            {
                Return (One)
            }

            Local1++
        }

        Return (Zero)
    }

    Name (SPS, 0x00)
    Name (OSIF, 0x00)
    Name (WNTF, 0x00)
    Name (WXPF, 0x00)
    Name (WVIS, 0x00)
    Name (WIN7, 0x00)
    Name (WIN8, 0x00)
    Name (WSPV, 0x00)
    Name (LNUX, 0x00)
    Name (H8DR, 0x00)
    Name (MEMX, 0x00)
    Name (ACST, 0x00)
    Name (FMBL, 0x01)
    Name (FDTP, 0x02)
    Name (FUPS, 0x03)
    Name (FNID, 0x00)
    Name (RRBF, 0x00)
    Name (NBCF, 0x00)
    Method (B1B2, 2, NotSerialized)
    {
        Return(Or(Arg0, ShiftLeft(Arg1, 8)))
    }
    Method (B1B4, 4, NotSerialized)
    {
        Store(Arg3, Local0)
        Or(Arg2, ShiftLeft(Local0, 8), Local0)
        Or(Arg1, ShiftLeft(Local0, 8), Local0)
        Or(Arg0, ShiftLeft(Local0, 8), Local0)
        Return(Local0)
    }
}

