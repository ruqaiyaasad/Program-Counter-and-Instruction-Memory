LAB 08 - PROGRAM COUNTER AND INSTRUCTION MEMORY
Task 1: pc4 supports a 4-bit address and loads next_addr on each rising edge.
Task 2: pc4_auto increments by one; instruction_memory8 returns zero for invalid
addresses. The sample program occupies addresses 0..3.
Task 3: pc32 resets to 0 and increments by 4.
Task 4: pc32_imem combines a 32-bit PC with a 32-bit instruction ROM. PC[5:2]
indexes the 16-word sample ROM. Task 5 is a Logisim circuit activity.
Example:
vlib work
vlog task3_32bit_pc.v task4_pc_im32.v tb_pc_im.v
vsim work.tb_pc_im
add wave *
run -all
Note: Task 1/2 use 4-bit address behavior. For Task 3/4, addresses are byte
addresses and the PC increments by four as required by RV32.
