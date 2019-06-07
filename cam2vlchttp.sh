#! /bin/bash
# Camera Stream HTTP en puerto 8550
# En VLC poner rtsp://ip.de.rapberry.pi:8550/ojoderaul
# ojoderaul es el nombre del stream, necesario para que VLC lo lea sin errores


raspivid -o - -t 99999 -vf \
--preview 200,100,640,360 \
-w 640 -h 360 \
--bitrate 1000000 \
--flush \
-fps 10 \
|cvlc -vvv stream:///dev/stdin \
--sout '#standard{access=http,mux=ts,dst=:8550/ojoderaul}' :demux=h264 \
/
