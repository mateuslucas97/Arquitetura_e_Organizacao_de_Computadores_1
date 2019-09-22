view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue HiZ -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/latch_d/d 
wave create -driver freeze -pattern clock -initialvalue HiZ -period 80ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/latch_d/en 
wave create -driver freeze -pattern clock -initialvalue HiZ -period 80ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/latch_d/rstn 
WaveCollapseAll -1
wave clipboard restore
