view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue HiZ -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/bancoreg/clock 
wave create -driver freeze -pattern random -initialvalue HiZ -period 50ps -random_type Uniform -seed 5 -starttime 0ps -endtime 1000ps sim:/bancoreg/RegWrite 
wave create -driver freeze -pattern constant -value 1111111111111111 -range 15 0 -starttime 0ps -endtime 1000ps sim:/bancoreg/WriteData 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value zzz -range 2 0 -starttime 0ps -endtime 1000ps sim:/bancoreg/WriteReg 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 000 -endvalue 111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 2 0 -starttime 0ps -endtime 1000ps sim:/bancoreg/Read2 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 000 -endvalue 111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 2 0 -starttime 0ps -endtime 1000ps sim:/bancoreg/Read1 
WaveExpandAll -1
WaveCollapseAll -1
wave clipboard restore
