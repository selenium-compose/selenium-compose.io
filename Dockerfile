FROM ubuntu as builder

WORKDIR /source

RUN apt-get -y update && apt-get install -y hugo git && \
    git clone https://github.com/selenium-compose/selenium-compose.io.git . && \
    hugo --enableGitInfo=true

FROM nginx
WORKDIR /usr/share/nginx/html
COPY --from=builder /source/public /usr/share/nginx/html
