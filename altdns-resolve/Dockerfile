FROM python:latest
RUN apt update
RUN apt install python3-pip -y
# Install Altdns
RUN git clone https://github.com/infosec-au/altdns.git &&\
    cd altdns &&\
    pip install -r requirements.txt
# Install Aiodnsbrute
RUN pip3 install aiodnsbrute
# Create Resolvers file
RUN echo 8.8.8.8 > /root/dns_resolver.txt
COPY main.sh /root/main.sh
RUN chmod +x /root/main.sh
RUN mkdir /data
COPY parse.py /code/aioparse.py
ENTRYPOINT [ "../root/main.sh" ]
