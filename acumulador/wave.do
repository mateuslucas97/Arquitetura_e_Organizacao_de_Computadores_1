view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue HiZ -period 90ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/acumulador/clock 
wave create -driver freeze -pattern clock -initialvalue HiZ -period 600ps -dutycycle 50 -starttime 0ps -endtime 600ps sim:/acumulador/clear 
wave create -driver freeze -pattern constant -value 00000011 -range 7 0 -starttime 0ps -endtime 1000ps sim:/acumulador/a 
wave create -driver freeze -pattern constant -value 00000010 -range 7 0 -starttime 0ps -endtime 1000ps sim:/acumulador/b 
wave create -driver freeze -pattern random -initialvalue 00000010 -period 50ps -random_type Uniform -seed 5 -range 7 0 -starttime 0ps -endtime 2000ps sim:/acumulador/a 
WaveExpandAll -1
wave create -driver freeze -pattern random -initialvalue 00000010 -period 50ps -random_type Uniform -seed 5 -range 7 0 -starttime 0ps -endtime 2000ps sim:/acumulador/b 
WaveExpandAll -1
wave create -driver freeze -pattern clock -initialvalue HiZ -period 100ps -dutycycle 50 -starttime 0ps -endtime 2000ps sim:/acumulador/clock 
wave create -driver freeze -pattern clock -initialvalue HiZ -period 1000ps -dutycycle 50 -starttime 0ps -endtime 2000ps sim:/acumulador/clear 
WaveCollapseAll -1
wave clipboard restore
