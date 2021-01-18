FROM golang:latest
RUN apt update
# Install essentials
RUN apt install -y  git
RUN git clone https://github.com/projectdiscovery/subfinder.git &&\
    cd subfinder/v2/cmd/subfinder &&\
    go build . &&\
    mv subfinder /usr/local/bin/ 
COPY main.sh /root/main.sh
RUN chmod +x /root/main.sh
RUN mkdir data
WORKDIR /data
ENTRYPOINT [ "../root/main.sh" ]
