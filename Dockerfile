FROM node:alpine

COPY . /app

WORKDIR /app

RUN npm install -g bower
RUN npm install

EXPOSE 1337

VOLUME /app/kongadata

ENTRYPOINT ["/app/start.sh"]
