@echo off
REM ****************************************************************************
REM Vivado (TM) v2022.2 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Thu Apr 18 21:15:21 -0500 2024
REM SW Build 3671981 on Fri Oct 14 05:00:03 MDT 2022
REM
REM IP Build 3669848 on Fri Oct 14 08:30:02 MDT 2022
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
REM elaborate design
echo "xelab --incr --debug typical --relax --mt 2 -L xil_defaultlib -L microblaze_v11_0_10 -L lmb_v10_v3_0_12 -L lmb_bram_if_cntlr_v4_0_21 -L blk_mem_gen_v8_4_5 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_27 -L fifo_generator_v13_2_7 -L axi_data_fifo_v2_1_26 -L axi_crossbar_v2_1_28 -L axi_lite_ipif_v3_0_4 -L axi_intc_v4_1_17 -L mdm_v3_2_23 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L lib_pkg_v1_0_2 -L lib_srl_fifo_v1_0_2 -L axi_uartlite_v2_0_31 -L interrupt_control_v3_1_4 -L axi_gpio_v2_0_29 -L axi_timer_v2_0_29 -L dist_mem_gen_v8_0_13 -L lib_fifo_v1_0_16 -L axi_quad_spi_v3_2_26 -L xlconcat_v2_1_4 -L uvm -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot mb_intro_top_behav xil_defaultlib.mb_intro_top xil_defaultlib.glbl -log elaborate.log"
call xelab  --incr --debug typical --relax --mt 2 -L xil_defaultlib -L microblaze_v11_0_10 -L lmb_v10_v3_0_12 -L lmb_bram_if_cntlr_v4_0_21 -L blk_mem_gen_v8_4_5 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_27 -L fifo_generator_v13_2_7 -L axi_data_fifo_v2_1_26 -L axi_crossbar_v2_1_28 -L axi_lite_ipif_v3_0_4 -L axi_intc_v4_1_17 -L mdm_v3_2_23 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L lib_pkg_v1_0_2 -L lib_srl_fifo_v1_0_2 -L axi_uartlite_v2_0_31 -L interrupt_control_v3_1_4 -L axi_gpio_v2_0_29 -L axi_timer_v2_0_29 -L dist_mem_gen_v8_0_13 -L lib_fifo_v1_0_16 -L axi_quad_spi_v3_2_26 -L xlconcat_v2_1_4 -L uvm -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot mb_intro_top_behav xil_defaultlib.mb_intro_top xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0