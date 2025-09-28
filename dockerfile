# ʹ�������� Ubuntu ����
FROM ubuntu:18.04

# ���ý���ģʽ
ENV DEBIAN_FRONTEND=noninteractive

# ��װ�������������

# ��������Ŀ¼
WORKDIR /app

# ���Ƶ�ǰĿ¼�����ļ���������
COPY . /app/MediaServer

# ���ÿ�ִ���ļ���Ȩ��
RUN chmod +x /app/MediaServer/mediaserver

# ���ö�̬��·��
ENV LD_LIBRARY_PATH=/app/MediaServer/lib:$LD_LIBRARY_PATH

# ���ű�Ҫ�˿�
EXPOSE 7001 7002 8888 8554 8332 8935 8080 8443 8000 10000

# ������ִ���ļ�
CMD ["./MediaServer/mediaserver", "-l", "2"]