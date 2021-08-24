FROM debian:10-slim
RUN apt update && apt install -y curl
WORKDIR /app
ADD https://updates.peer2profit.com/p2pclient /app/
RUN chmod +x p2pclient
ENV email=cingjp@163.com
CMD [ "/app/p2pclient", "-l", "$email" ]
# CMD ["sleep", "infinity"]
