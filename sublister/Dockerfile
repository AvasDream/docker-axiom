FROM python:latest
RUN apt-get update
RUN apt-get install -y \
    python-requests \
    python-dnspython \
    git && \
    git clone https://github.com/aboul3la/Sublist3r.git sublister
RUN cd /sublister && pip install -r ./requirements.txt
COPY main.sh /root/main.sh
RUN chmod +x /root/main.sh
RUN mkdir data
WORKDIR /data
ENTRYPOINT [ "../root/main.sh" ]
