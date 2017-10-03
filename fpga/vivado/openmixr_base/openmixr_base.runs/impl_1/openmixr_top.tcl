proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param xicom.use_bs_reader 1
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.cache/wt [current_project]
  set_property parent.project_path /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.xpr [current_project]
  set_property ip_output_repo /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  add_files -quiet /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.runs/synth_1/openmixr_top.dcp
  add_files -quiet /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/sys_pll/sys_pll.dcp
  set_property netlist_only true [get_files /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/sys_pll/sys_pll.dcp]
  add_files -quiet /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/camera_pll/camera_pll.dcp
  set_property netlist_only true [get_files /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/camera_pll/camera_pll.dcp]
  add_files -quiet /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/video_data_fifo/video_data_fifo.dcp
  set_property netlist_only true [get_files /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/video_data_fifo/video_data_fifo.dcp]
  add_files -quiet /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/dsi_pll/dsi_pll.dcp
  set_property netlist_only true [get_files /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/dsi_pll/dsi_pll.dcp]
  add_files -quiet /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/init_config_rom/init_config_rom.dcp
  set_property netlist_only true [get_files /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/init_config_rom/init_config_rom.dcp]
  add_files -quiet /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/video_pll/video_pll.dcp
  set_property netlist_only true [get_files /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/video_pll/video_pll.dcp]
  read_xdc -mode out_of_context -ref sys_pll -cells inst /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/sys_pll/sys_pll_ooc.xdc
  set_property processing_order EARLY [get_files /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/sys_pll/sys_pll_ooc.xdc]
  read_xdc -prop_thru_buffers -ref sys_pll -cells inst /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/sys_pll/sys_pll_board.xdc
  set_property processing_order EARLY [get_files /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/sys_pll/sys_pll_board.xdc]
  read_xdc -ref sys_pll -cells inst /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/sys_pll/sys_pll.xdc
  set_property processing_order EARLY [get_files /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/sys_pll/sys_pll.xdc]
  read_xdc -mode out_of_context -ref camera_pll -cells inst /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/camera_pll/camera_pll_ooc.xdc
  set_property processing_order EARLY [get_files /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/camera_pll/camera_pll_ooc.xdc]
  read_xdc -prop_thru_buffers -ref camera_pll -cells inst /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/camera_pll/camera_pll_board.xdc
  set_property processing_order EARLY [get_files /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/camera_pll/camera_pll_board.xdc]
  read_xdc -ref camera_pll -cells inst /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/camera_pll/camera_pll.xdc
  set_property processing_order EARLY [get_files /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/camera_pll/camera_pll.xdc]
  read_xdc -mode out_of_context -ref video_data_fifo -cells U0 /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/video_data_fifo/video_data_fifo_ooc.xdc
  set_property processing_order EARLY [get_files /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/video_data_fifo/video_data_fifo_ooc.xdc]
  read_xdc -ref video_data_fifo -cells U0 /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/video_data_fifo/video_data_fifo/video_data_fifo.xdc
  set_property processing_order EARLY [get_files /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/video_data_fifo/video_data_fifo/video_data_fifo.xdc]
  read_xdc -mode out_of_context -ref dsi_pll -cells inst /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/dsi_pll/dsi_pll_ooc.xdc
  set_property processing_order EARLY [get_files /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/dsi_pll/dsi_pll_ooc.xdc]
  read_xdc -prop_thru_buffers -ref dsi_pll -cells inst /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/dsi_pll/dsi_pll_board.xdc
  set_property processing_order EARLY [get_files /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/dsi_pll/dsi_pll_board.xdc]
  read_xdc -ref dsi_pll -cells inst /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/dsi_pll/dsi_pll.xdc
  set_property processing_order EARLY [get_files /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/dsi_pll/dsi_pll.xdc]
  read_xdc -mode out_of_context -ref init_config_rom -cells U0 /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/init_config_rom/init_config_rom_ooc.xdc
  set_property processing_order EARLY [get_files /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/init_config_rom/init_config_rom_ooc.xdc]
  read_xdc -mode out_of_context -ref video_pll -cells inst /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/video_pll/video_pll_ooc.xdc
  set_property processing_order EARLY [get_files /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/video_pll/video_pll_ooc.xdc]
  read_xdc -prop_thru_buffers -ref video_pll -cells inst /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/video_pll/video_pll_board.xdc
  set_property processing_order EARLY [get_files /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/video_pll/video_pll_board.xdc]
  read_xdc -ref video_pll -cells inst /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/video_pll/video_pll.xdc
  set_property processing_order EARLY [get_files /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/video_pll/video_pll.xdc]
  read_xdc /home/dave/openMixR/fpga/constraints/pins.xdc
  read_xdc -ref video_data_fifo -cells U0 /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/video_data_fifo/video_data_fifo/video_data_fifo_clocks.xdc
  set_property processing_order LATE [get_files /home/dave/openMixR/fpga/vivado/openmixr_base/openmixr_base.srcs/sources_1/ip/video_data_fifo/video_data_fifo/video_data_fifo_clocks.xdc]
  link_design -top openmixr_top -part xc7a200tfbg484-3
  write_hwdef -file openmixr_top.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force openmixr_top_opt.dcp
  report_drc -file openmixr_top_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force openmixr_top_placed.dcp
  report_io -file openmixr_top_io_placed.rpt
  report_utilization -file openmixr_top_utilization_placed.rpt -pb openmixr_top_utilization_placed.pb
  report_control_sets -verbose -file openmixr_top_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force openmixr_top_routed.dcp
  report_drc -file openmixr_top_drc_routed.rpt -pb openmixr_top_drc_routed.pb -rpx openmixr_top_drc_routed.rpx
  report_methodology -file openmixr_top_methodology_drc_routed.rpt -rpx openmixr_top_methodology_drc_routed.rpx
  report_timing_summary -warn_on_violation -max_paths 10 -file openmixr_top_timing_summary_routed.rpt -rpx openmixr_top_timing_summary_routed.rpx
  report_power -file openmixr_top_power_routed.rpt -pb openmixr_top_power_summary_routed.pb -rpx openmixr_top_power_routed.rpx
  report_route_status -file openmixr_top_route_status.rpt -pb openmixr_top_route_status.pb
  report_clock_utilization -file openmixr_top_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force openmixr_top_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  catch { write_mem_info -force openmixr_top.mmi }
  write_bitstream -force -no_partial_bitfile openmixr_top.bit 
  catch { write_sysdef -hwdef openmixr_top.hwdef -bitfile openmixr_top.bit -meminfo openmixr_top.mmi -file openmixr_top.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}

