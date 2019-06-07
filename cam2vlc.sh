# Programa para iniciar el streaming RTSP con VLC 
# OJO esta en el puerto 8550
# En VLC poner rtsp://192.168.1.100:8550/ojoderaul
# ojoderaul es el nombre del stream, necesario para que VLC lo lea sin errores

#! /bin/bash
raspivid -o - -t 0 \
-hf -vf \
-w 640 -h 360 \
-fps 10 \
| cvlc -vvv stream:///dev/stdin --sout '#rtp{sdp=rtsp://:8550/ojoderaul}' :demux=h264 \

