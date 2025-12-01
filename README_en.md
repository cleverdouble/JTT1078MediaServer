[简体中文](./README.md) | English

# JTT1078MediaServer  
A streaming media server based on the JT/T 1078 standard, supporting Su-Standard/Yue-Standard, video streams in H264/H265, audio streams in AAC/ADPCMA/G711A, and also supporting GB28181.  
Client playback protocols include RTSP, RTMP, HTTP-FLV, WebSocket, WebRTC, etc.  
This module serves only as a video streaming server for JTT1078 terminals. Users must implement JT/T 808 upstream/downstream commands and services on their own.

🔗 **Official Website:** https://homepage-omega-lovat.vercel.app 

---

# Run with Docker
```bash
sudo docker run -it --name mediaserver \
            -p 7001:7001 \
            -p 7002:7002 \
            -p 7003:7003 \
            -p 8888:8888 \
            -p 8554:8554 \
            -p 8332:8332 \
            -p 8935:8935 \
            -p 8080:8080 \
            -p 8443:8443 \
            -p 8000:8000/udp \
            -p 10000:10000/udp \
            leowade/mediaserver:2.0
````

Running result preview: <img width="1301" height="760" alt="image" src="https://github.com/user-attachments/assets/f0423a83-fa92-400d-b4c3-b2198ba12a64" />

---

# Terminal Connection Endpoints

```
  Live:     127.0.0.1:7001
  History:  127.0.0.1:7002
  Terminal Upstream Intercom Audio: 127.0.0.1:7003
```

---

# Live Audio/Video Playback URL Examples

```
rtsp:      rtsp://127.0.0.1:8554/000000013100000000/1
rtmp:      rtmp://127.0.0.1:8935/000000013100000000/1
http-flv:  http://127.0.0.1:8080/000000013100000000/1.live.flv
hls:       http://127.0.0.1:8080/000000013100000000/1/hls.m3u8
websocket: ws://127.0.0.1:8080/000000013100000000/1.live.flv
webrtc:    http://127.0.0.1:8080/index/api/webrtc?app=000000013100000000&stream=1&type=play
```

---

# Historical Audio/Video Playback URL Examples

```
To play historical audio/video, append "his" after the device number.

rtsp:      rtsp://127.0.0.1:8554/000000013100000000his/1
rtmp:      rtmp://127.0.0.1:8935/000000013100000000his/1
http-flv:  http://127.0.0.1:8080/000000013100000000his/1.live.flv
hls:       http://127.0.0.1:8080/000000013100000000his/1/hls.m3u8
websocket: ws://127.0.0.1:8080/000000013100000000his/1.live.flv
webrtc:    http://127.0.0.1:8080/index/api/webrtc?app=000000013100000000his&stream=1&type=play
```

---

# Intercom Audio Downlink Path

```
WebSocket-based intercom audio streaming reference project:
https://github.com/lin557/vue-live-talk 

Example downlink URL:
ws://localhost:8888/00000000013400000001/0?type=1&pt=pcm&vendorType=0

Parameter description:
  type:        0 - 2013 version, 1 - 2016 or later (SIM length compatible)
  pt:          pcm  // PCM intercom input supported
  vendorType:  0    // 0 - default, 1 - vendor-specific with extra 4 bytes
```

---

# Acknowledgement

Thanks to Xia Chu for providing the excellent open-source streaming framework ZLMediaKit: [https://github.com/ZLMediaKit/ZLMediaKit](https://github.com/ZLMediaKit/ZLMediaKit)

---

# Contact

Email: **[cleverdoublee@163.com](mailto:cleverdoublee@163.com)**
QQ: **458283868**
