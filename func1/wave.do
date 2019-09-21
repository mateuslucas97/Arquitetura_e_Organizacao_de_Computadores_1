view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps sim:/func1/I0 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/func1/I1 
wave create -driver freeze -pattern clock -initialvalue HiZ -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/func1/S 
wave create -driver freeze -pattern clock -initialvalue St1 -period 70ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/func1/I0 
wave create -driver freeze -pattern clock -initialvalue St0 -period 90ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/func1/I1 
wave create -driver freeze -pattern clock -initialvalue St1 -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/func1/S 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps Edit:/func1/I1 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps Edit:/func1/I0 
WaveCollapseAll -1
wave clipboard restore
