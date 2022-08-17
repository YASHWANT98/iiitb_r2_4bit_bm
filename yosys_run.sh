# Read liberty file
read_liberty -lib /home/yashm98/iiitb_r2_4bit_bm/lib/sky130_fd_sc_hd__tt_025C_1v80.lib

#Read verilog file
read_verilog iiitb_r2_4bit_bm.v

# Synthesis
synth -top iiitb_r2_4bit_bm

# Physical Cell Mapping
abc -liberty /home/yashm98/iiitb_r2_4bit_bm/lib/sky130_fd_sc_hd__tt_025C_1v80.lib

# Write Post Synthesis verilog file
write_verilog iiitb_r2_4bit_bm_postsyn.v

show -stretch -width iiitb_r2_4bit_bm
