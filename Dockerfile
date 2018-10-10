FROM ubuntu

WORKDIR /app

RUN apt-get -y update && apt-get install -y hugo git

RUN git clone https://github.com/selenium-compose/selenium-compose.io.git .

EXPOSE 1313

CMD hugo --renderToDisk=true --watch=true --bind="0.0.0.0" --baseURL="${VIRTUAL_HOST}" server
