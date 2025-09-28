# JTT1078MediaServer
  基于JT/T 1078标准实现的流媒体服务器，支持苏标/粤标，支持视频流H264/H265，音频流AAC/ADPCMA/G711A等格式，同时支持GB28181，客户端支持RTSP、RTMP、HTTP-FLV、WebSocket、WebRTC等播放方式。
  该模块仅为JTT1078终端设备的平台视频流服务器模块，需用户自主实现808上下行指令及服务。

# docker方式下载运行
sudo docker run -it --name mediaserver \
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
            leowade/mediaserver:1.1

运行后如下图：
<img width="1301" height="760" alt="image" src="https://github.com/user-attachments/assets/f0423a83-fa92-400d-b4c3-b2198ba12a64" />

# 终端连接地址
  127.0.0.1:7001

# 播放url规则示例
rtsp：rtsp://127.0.0.1:8554/000000013100000000/1

rtmp：rtmp://127.0.0.1:8935/000000013100000000/1

http-flv：http://127.0.0.1:8080/000000013100000000/1.live.flv

hls：http://127.0.0.1:8080/000000013100000000/1/hls.m3u8

websocket: ws://127.0.0.1:8080/000000013100000000/1.live.flv

webrtc: http://127.0.0.1:8080/index/api/webrtc?app=000000013100000000&stream=1&type=play

# 对讲音频下发路径
    ws://localhost:7002/00000000013400000001/0?type=1&pt=pcm&vendorType=1
    参数说明：
     type: //0-2013，1-2016或2019，用于SIM卡号长度的兼容
     pt: pcm //当前仅支持pcm格式的对讲输入
     vendorType:0 //厂商类型， 0-默认

# 联系
QQ: 458283868
