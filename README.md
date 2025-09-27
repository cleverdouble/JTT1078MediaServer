# JTT1078MediaServer
基于JT/T 1078标准实现的流媒体服务器，支持苏标/粤标，支持视频流H264/H265，音频流AAC/ADPCMA/G711A等格式，同时支持GB28181，客户端支持RTSP、RTMP、HTTP-FLV、WebSocket、WebRTC等播放方式。
该模块仅为JTT1078终端设备的平台视频流服务器模块，需用户自主实现808上下行指令及服务。

# docker方式下载运行
sudo docker run -it --name mediaserver10 \
            -p 7001:7001 \
            -p 7002:7002 \
            -p 8888:8888 \
            -p 8554:8554 \
            -p 8332:8332 \
            -p 8935:8935 \
            -p 8080:8080 \
            -p 8443:8443 \
            -p 8000:8000/udp \
            -p 10000:10000/udp \
            leowade/mediaserver:1.0

# 联系
QQ: 458283868
