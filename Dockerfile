FROM ubuntu as builder

WORKDIR /source

RUN apt-get -y update && apt-get install -y hugo git && \
    git clone https://github.com/selenium-compose/selenium-compose.io.git . && \
    hugo

FROM nginx

WORKDIR /website

COPY --from=builder /source/public /usr/share/nginx/html
