view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue HiZ -period 80ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/exercicio/clock 
wave create -driver freeze -pattern clock -initialvalue HiZ -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/exercicio/d 
WaveCollapseAll -1
wave clipboard restore
