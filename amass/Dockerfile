FROM kalilinux/kali-rolling:latest
RUN apt update
# Install essentials
RUN apt install -y  amass
COPY main.sh /root/main.sh
RUN chmod +x /root/main.sh
RUN mkdir data
WORKDIR /data
ENTRYPOINT [ "../root/main.sh" ]
