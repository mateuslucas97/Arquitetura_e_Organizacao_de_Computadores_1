view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue HiZ -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/mux_4x1/a 
wave create -driver freeze -pattern clock -initialvalue HiZ -period 150ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/mux_4x1/b 
wave create -driver freeze -pattern clock -initialvalue HiZ -period 200ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/mux_4x1/c 
wave create -driver freeze -pattern clock -initialvalue HiZ -period 250ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/mux_4x1/d 
wave create -driver freeze -pattern clock -initialvalue HiZ -period 100ps -dutycycle 60 -starttime 0ps -endtime 1000ps sim:/mux_4x1/a 
wave create -driver freeze -pattern counter -startvalue 00 -endvalue 11 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 1 0 -starttime 0ps -endtime 1000ps sim:/mux_4x1/Control 
WaveExpandAll -1
wave create -driver freeze -pattern clock -initialvalue HiZ -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/mux_4x1/a 
wave create -driver freeze -pattern clock -initialvalue HiZ -period 250ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/mux_4x1/b 
wave create -driver freeze -pattern clock -initialvalue HiZ -period 250ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/mux_4x1/c 
wave create -driver freeze -pattern clock -initialvalue HiZ -period 250ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/mux_4x1/d 
wave create -driver freeze -pattern clock -initialvalue HiZ -period 500ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/mux_4x1/c 
wave create -driver freeze -pattern clock -initialvalue HiZ -period 1000ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/mux_4x1/d 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps Edit:/mux_4x1/b 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps Edit:/mux_4x1/c 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps Edit:/mux_4x1/d 
WaveCollapseAll -1
wave clipboard restore
