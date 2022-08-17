git clone https://github.com/YASHWANT98/iiitb_r2_4bit_bm

cd iiitb_r2_4bit_bm

yosys

read_liberty -lib /home/yashm98/iiitb_r2_4bit_bm/lib/sky130_fd_sc_hd__tt_025C_1v80.lib

read_verilog iiitb_r2_4bit_bm.v

synth -top iiitb_r2_4bit_bm

abc -liberty /home/yashm98/iiitb_r2_4bit_bm/lib/sky130_fd_sc_hd__tt_025C_1v80.lib

write_verilog iiitb_r2_4bit_bm_postsyn.v

show -stretch -width iiitb_r2_4bit_bm
