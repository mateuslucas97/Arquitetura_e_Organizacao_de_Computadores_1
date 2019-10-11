view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue HiZ -period 100ps -dutycycle 50 -starttime 0ps -endtime 2000ps sim:/datapath/clk 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1600ps sim:/datapath/reset 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 400ps sim:/datapath/reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 200ps Edit:/datapath/reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 200ps -endtime 400ps Edit:/datapath/reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 400ps -endtime 2000ps Edit:/datapath/reset 
WaveCollapseAll -1
wave clipboard restore
