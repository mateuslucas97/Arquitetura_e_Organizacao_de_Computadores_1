view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue HiZ -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/data_path2/clk 
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 500ps sim:/data_path2/reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 500ps -endtime 1000ps Edit:/data_path2/reset 
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps sim:/data_path2/mem_to_reg 
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps sim:/data_path2/alu_op 
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps sim:/data_path2/reg_write_data 
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps sim:/data_path2/mem_read 
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps sim:/data_path2/mem_write 
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps sim:/data_path2/alu_src 
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps sim:/data_path2/reg_write 
wave create -driver freeze -pattern constant -value 1000000110000000 -range 15 0 -starttime 0ps -endtime 1000ps sim:/data_path2/pc_current 
WaveExpandAll -1
WaveCollapseAll -1
wave clipboard restore
