FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y psmisc procps iputils-ping dnsutils && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY linux-processes-intro.sh .

RUN chmod +x linux-processes-intro.sh

CMD ["./linux-processes-intro.sh"]