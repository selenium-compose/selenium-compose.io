FROM ubuntu

WORKDIR /app

RUN apt-get -y update && apt-get install -y hugo git

RUN git clone https://github.com/selenium-compose/selenium-compose.io.git .

EXPOSE 1313

<<<<<<< HEAD
CMD hugo --renderToDisk=true --watch=true --bind="0.0.0.0" server
=======
CMD hugo --renderToDisk=true --watch=true --bind="0.0.0.0" --baseURL="${VIRTUAL_HOST}" server
>>>>>>> 0adf69fd509707fe762313cf522956fe2097d7b4
