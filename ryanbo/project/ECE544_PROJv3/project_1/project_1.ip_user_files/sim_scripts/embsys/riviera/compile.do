vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/lib_cdc_v1_0_2
vlib riviera/lib_pkg_v1_0_2
vlib riviera/axi_timer_v2_0_19
vlib riviera/fit_timer_v2_0_8
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/axi_uartlite_v2_0_21
vlib riviera/microblaze_v10_0_7
vlib riviera/axi_intc_v4_1_11
vlib riviera/xlconcat_v2_1_1
vlib riviera/mdm_v3_2_14
vlib riviera/proc_sys_reset_v5_0_12
vlib riviera/blk_mem_gen_v8_4_1
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_17
vlib riviera/fifo_generator_v13_2_2
vlib riviera/axi_data_fifo_v2_1_16
vlib riviera/axi_crossbar_v2_1_18
vlib riviera/lmb_v10_v3_0_9
vlib riviera/lmb_bram_if_cntlr_v4_0_15

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap axi_timer_v2_0_19 riviera/axi_timer_v2_0_19
vmap fit_timer_v2_0_8 riviera/fit_timer_v2_0_8
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_21 riviera/axi_uartlite_v2_0_21
vmap microblaze_v10_0_7 riviera/microblaze_v10_0_7
vmap axi_intc_v4_1_11 riviera/axi_intc_v4_1_11
vmap xlconcat_v2_1_1 riviera/xlconcat_v2_1_1
vmap mdm_v3_2_14 riviera/mdm_v3_2_14
vmap proc_sys_reset_v5_0_12 riviera/proc_sys_reset_v5_0_12
vmap blk_mem_gen_v8_4_1 riviera/blk_mem_gen_v8_4_1
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_17 riviera/axi_register_slice_v2_1_17
vmap fifo_generator_v13_2_2 riviera/fifo_generator_v13_2_2
vmap axi_data_fifo_v2_1_16 riviera/axi_data_fifo_v2_1_16
vmap axi_crossbar_v2_1_18 riviera/axi_crossbar_v2_1_18
vmap lmb_v10_v3_0_9 riviera/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_15 riviera/lmb_bram_if_cntlr_v4_0_15

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../../project_1.srcs/sources_1/bd/embsys/ipshared/5bf9/src/rgbpwm.v" \
"../../../../project_1.srcs/sources_1/bd/embsys/ipshared/5bf9/src/sevensegment.v" \
"../../../../project_1.srcs/sources_1/bd/embsys/ipshared/5bf9/src/debounce.v" \
"../../../../project_1.srcs/sources_1/bd/embsys/ipshared/5bf9/hdl/nexys4IO_v2_0_S00_AXI.v" \
"../../../../project_1.srcs/sources_1/bd/embsys/ipshared/5bf9/hdl/nexys4IO_v2_0.v" \
"../../../bd/embsys/ip/embsys_nexys4IO_0_0/sim/embsys_nexys4IO_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../project_1.srcs/sources_1/bd/embsys/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../project_1.srcs/sources_1/bd/embsys/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../project_1.srcs/sources_1/bd/embsys/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_timer_v2_0_19 -93 \
"../../../../project_1.srcs/sources_1/bd/embsys/ipshared/0a2c/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/embsys/ip/embsys_axi_timer_0_0/sim/embsys_axi_timer_0_0.vhd" \

vcom -work fit_timer_v2_0_8 -93 \
"../../../../project_1.srcs/sources_1/bd/embsys/ipshared/d59c/hdl/fit_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/embsys/ip/embsys_fit_timer_0_0/sim/embsys_fit_timer_0_0.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../project_1.srcs/sources_1/bd/embsys/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_21 -93 \
"../../../../project_1.srcs/sources_1/bd/embsys/ipshared/a15e/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/embsys/ip/embsys_axi_uartlite_0_0/sim/embsys_axi_uartlite_0_0.vhd" \

vcom -work microblaze_v10_0_7 -93 \
"../../../../project_1.srcs/sources_1/bd/embsys/ipshared/b649/hdl/microblaze_v10_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/embsys/ip/embsys_microblaze_0_0/sim/embsys_microblaze_0_0.vhd" \

vcom -work axi_intc_v4_1_11 -93 \
"../../../../project_1.srcs/sources_1/bd/embsys/ipshared/2fec/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/embsys/ip/embsys_microblaze_0_axi_intc_0/sim/embsys_microblaze_0_axi_intc_0.vhd" \

vlog -work xlconcat_v2_1_1  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../../project_1.srcs/sources_1/bd/embsys/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../bd/embsys/ip/embsys_microblaze_0_xlconcat_0/sim/embsys_microblaze_0_xlconcat_0.v" \

vcom -work mdm_v3_2_14 -93 \
"../../../../project_1.srcs/sources_1/bd/embsys/ipshared/5125/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/embsys/ip/embsys_mdm_1_0/sim/embsys_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../bd/embsys/ip/embsys_clk_wiz_1_0/embsys_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/embsys/ip/embsys_clk_wiz_1_0/embsys_clk_wiz_1_0.v" \

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../project_1.srcs/sources_1/bd/embsys/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/embsys/ip/embsys_rst_clk_wiz_1_100M_0/sim/embsys_rst_clk_wiz_1_100M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../bd/embsys/ipshared/4aa6/hdl/CameraIP_v1_0_S00_AXI.v" \
"../../../bd/embsys/ipshared/4aa6/src/OV7670_capture.v" \
"../../../bd/embsys/ipshared/4aa6/src/OV7670_controller.v" \
"../../../bd/embsys/ipshared/4aa6/src/OV7670_wrapper.v" \
"../../../bd/embsys/ipshared/4aa6/src/vga.v" \
"../../../bd/embsys/ipshared/4aa6/src/i2c_sender.v" \
"../../../bd/embsys/ipshared/4aa6/hdl/CameraIP_v1_0.v" \
"../../../bd/embsys/ip/embsys_CameraIP_0_3/sim/embsys_CameraIP_0_3.v" \

vlog -work blk_mem_gen_v8_4_1  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../../project_1.srcs/sources_1/bd/embsys/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../bd/embsys/ip/embsys_blk_mem_gen_0_0/sim/embsys_blk_mem_gen_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../../project_1.srcs/sources_1/bd/embsys/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../../project_1.srcs/sources_1/bd/embsys/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_17  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../../project_1.srcs/sources_1/bd/embsys/ipshared/6020/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_2  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../../project_1.srcs/sources_1/bd/embsys/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_2 -93 \
"../../../../project_1.srcs/sources_1/bd/embsys/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_2  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../../project_1.srcs/sources_1/bd/embsys/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_16  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../../project_1.srcs/sources_1/bd/embsys/ipshared/247d/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_18  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../../project_1.srcs/sources_1/bd/embsys/ipshared/15a3/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../bd/embsys/ip/embsys_xbar_0/sim/embsys_xbar_0.v" \

vcom -work lmb_v10_v3_0_9 -93 \
"../../../../project_1.srcs/sources_1/bd/embsys/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/embsys/ip/embsys_dlmb_v10_0/sim/embsys_dlmb_v10_0.vhd" \
"../../../bd/embsys/ip/embsys_ilmb_v10_0/sim/embsys_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_15 -93 \
"../../../../project_1.srcs/sources_1/bd/embsys/ipshared/92fd/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/embsys/ip/embsys_dlmb_bram_if_cntlr_0/sim/embsys_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/embsys/ip/embsys_ilmb_bram_if_cntlr_0/sim/embsys_ilmb_bram_if_cntlr_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/b65a" "+incdir+../../../../project_1.srcs/sources_1/bd/embsys/ipshared/ec67/hdl" \
"../../../bd/embsys/ip/embsys_lmb_bram_0/sim/embsys_lmb_bram_0.v" \
"../../../bd/embsys/sim/embsys.v" \

vlog -work xil_defaultlib \
"glbl.v"

