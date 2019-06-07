#! /bin/bash
# Camera Pictures

# EJEMPLO de timelapse 
# raspistill -t 30000 -tl -2000 -o image%04d.jpg --keypress

raspistill -o %04d.jpg --preview 200,100,640,360 -w 640 -h 360 \
--verbose \
--rotation 180 \
--timeout 3000 \
--timelapse 1000 \
--datetime \
 \
 \
 \
 \
