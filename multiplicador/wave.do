view wave 
wave clipboard store
wave create -driver freeze -pattern random -initialvalue 1 -period 50ps -random_type Uniform -seed 5 -range 31 0 -starttime 0ps -endtime 1000ps sim:/multiplicador/a 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 1 -range 31 0 -starttime 0ps -endtime 1000ps sim:/multiplicador/b 
WaveExpandAll -1
WaveCollapseAll -1
wave clipboard restore
