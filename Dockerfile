# BUILD
FROM gcc:latest AS builder

COPY . /app
WORKDIR /app

RUN apt-get update && apt-get install -y git g++ \
   libboost-dev libboost-program-options-dev \
   libgtest-dev \
   && git submodule update --init --recursive \
   && mkdir bin \
   && g++ src/*.cpp -DNDEBUG -I asio/asio/include -lpthread -o /app/server

# RUN
FROM ubuntu:latest
RUN groupadd cossacks && useradd -g cossacks cossack

USER cossack

WORKDIR /app

COPY --chown=cossack:cossacks --from=builder /app/server /app/server

EXPOSE 31523

CMD ["./server"]