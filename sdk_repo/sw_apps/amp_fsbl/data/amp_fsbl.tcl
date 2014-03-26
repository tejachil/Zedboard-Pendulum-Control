proc swapp_get_name {} {
    return "Zynq FSBL for AMP";
}

proc swapp_get_description {} {
    return "AMP Modified First Stage Bootloader (FSBL) for Zynq. The FSBL configures the FPGA with HW bit stream (if it exists) \
	and loads the Operating System (OS) Image or Standalone (SA) Image or 2nd Stage Boot Loader image from the \
	non-volatile memory (NAND/NOR/QSPI) to RAM (DDR) and starts executing it.  It supports multiple partitions, \
	and each partition can be a code image or a bit stream.\
    \
    NOTE: Modified add support for multiple files for AMP.";
}

proc swapp_is_supported_sw {} {
    # nothing to check but SwGen expects us to provide this
}

proc swapp_is_supported_hw {} {

    # check processor type
    set proc_instance [xget_processor_name];
    set proc_type [xget_ip_attribute "type" $proc_instance];

    if { $proc_type != "ps7_cortexa9" } {
                error "This application is supported only for CortexA9 processors.";
    }

    return 1;
}


proc get_stdout {} {
    set os [get_os];
    set stdout [xget_sw_module_parameter $os "STDOUT"];
    return $stdout;
}

proc check_stdout_hw {} {
    set p7_uarts [xget_ips "type" "ps7_uart"];
}

proc swapp_generate {} {

    # nothing to check but SwGen expects us to provide this
}

proc swapp_get_linker_constraints {} {

    # don't generate a linker script. fsbl has its own linker script
    return "lscript no";
}
