/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-1, Tue Jan 31 13:33:02 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000033 (51)
 *     Revision         0x01
 *     Checksum         0x57
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "TP-SSDT1"
 *     OEM Revision     0x00000100 (256)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */
DefinitionBlock ("", "SSDT", 1, "LENOVO", "TP-SSDT1", 0x00000100)
{
    Scope (\)
    {
        Method (KOU1, 0, NotSerialized)
        {
            Stall (0x64)
        }
    }
}

