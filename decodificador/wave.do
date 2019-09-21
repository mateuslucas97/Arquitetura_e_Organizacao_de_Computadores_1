view wave 
wave clipboard store
wave create -driver freeze -pattern counter -startvalue 000 -endvalue 111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 2 0 -starttime 0ps -endtime 1000ps sim:/decodificador/entrada 
WaveExpandAll -1
WaveCollapseAll -1
wave clipboard restore
