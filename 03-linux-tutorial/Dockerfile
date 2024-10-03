FROM ubuntu:20.04

RUN apt-get update && apt-get install -y procps

WORKDIR /app
COPY main.sh .

RUN chmod +x main.sh

CMD ["./main.sh"]