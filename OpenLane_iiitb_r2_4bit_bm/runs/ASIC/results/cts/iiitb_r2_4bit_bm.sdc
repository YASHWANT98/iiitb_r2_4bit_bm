###############################################################################
# Created by write_sdc
# Tue Aug 30 09:25:26 2022
###############################################################################
current_design iiitb_r2_4bit_bm
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 10.0000 [get_ports {clk}]
set_clock_transition 0.1500 [get_clocks {clk}]
set_clock_uncertainty 0.2500 clk
set_propagated_clock [get_clocks {clk}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {M[0]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {M[1]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {M[2]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {M[3]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {Q[0]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {Q[1]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {Q[2]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {Q[3]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {load}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {reset}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {P[0]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {P[1]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {P[2]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {P[3]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {P[4]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {P[5]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {P[6]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {P[7]}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {P[7]}]
set_load -pin_load 0.0334 [get_ports {P[6]}]
set_load -pin_load 0.0334 [get_ports {P[5]}]
set_load -pin_load 0.0334 [get_ports {P[4]}]
set_load -pin_load 0.0334 [get_ports {P[3]}]
set_load -pin_load 0.0334 [get_ports {P[2]}]
set_load -pin_load 0.0334 [get_ports {P[1]}]
set_load -pin_load 0.0334 [get_ports {P[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {load}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {reset}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {M[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {M[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {M[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {M[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {Q[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {Q[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {Q[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {Q[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 10.0000 [current_design]
