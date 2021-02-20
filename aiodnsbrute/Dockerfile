FROM python:3.8
RUN apt update
RUN apt install python3-pip -y
RUN pip3 install aiodnsbrute
RUN echo 8.8.8.8 > /root/dns_resolver.txt
RUN wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/DNS/subdomains-top1million-110000.txt -O /root/sublist.txt
RUN head -n 1000 /root/sublist.txt > /root/debug.txt
RUN mkdir /code
COPY parse.py /code/aioparse.py
COPY main.sh /root/main.sh
RUN chmod +x /root/main.sh
RUN mkdir data
WORKDIR /data
ENTRYPOINT [ "../root/main.sh" ]
