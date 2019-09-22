view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 0000000000000001 -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/entrada0 
wave create -driver freeze -pattern constant -value 0 -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/entrada1 
wave create -driver freeze -pattern constant -value 0 -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/entrada2 
wave create -driver freeze -pattern random -initialvalue 0000000000000001 -period 50ps -random_type Uniform -seed 5 -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/entrada0 
wave create -driver freeze -pattern random -initialvalue 0000000000000000 -period 50ps -random_type Uniform -seed 5 -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/entrada1 
wave create -driver freeze -pattern random -initialvalue 1 -period 50ps -random_type Uniform -seed 5 -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/entrada1 
wave create -driver freeze -pattern random -initialvalue 0000000000000000 -period 50ps -random_type Uniform -seed 5 -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/entrada1 
wave create -driver freeze -pattern random -initialvalue 0000000000000001 -period 50ps -random_type Uniform -seed 5 -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/entrada1 
wave create -driver freeze -pattern constant -value 0000000000000000 -range 15 0 -starttime 0ps -endtime 1000ps sim:/multiplexador/entrada1 
wave create -driver freeze -pattern counter -startvalue 0000000000000000 -endvalue 1111111111111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 15 0 -starttime 0ps -endtime 1000ps sim:/registrador/dado 
WaveExpandAll -1
wave create -driver freeze -pattern clock -initialvalue HiZ -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/registrador/clock 
wave create -driver freeze -pattern clock -initialvalue HiZ -period 100ps -dutycycle 50 -starttime 0ps -endtime 50ps sim:/registrador/habilita_escrita 
wave create -driver freeze -pattern clock -initialvalue HiZ -period 100ps -dutycycle 50 -starttime 900ps -endtime 1000ps sim:/registrador/habilita_escrita 
WaveCollapseAll -1
wave clipboard restore
