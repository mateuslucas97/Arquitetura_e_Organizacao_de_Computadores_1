view wave 
wave clipboard store
wave create -driver freeze -pattern random -initialvalue zzzzzzzzzzzzzzzz -period 50ps -random_type Uniform -seed 5 -range 15 0 -starttime 0ps -endtime 1000ps sim:/fp_adder/num1 
WaveExpandAll -1
wave create -driver freeze -pattern random -initialvalue zzzzzzzzzzzzzzzz -period 50ps -random_type Uniform -seed 10 -range 15 0 -starttime 0ps -endtime 1000ps sim:/fp_adder/num2 
WaveExpandAll -1
WaveCollapseAll -1
wave clipboard restore
