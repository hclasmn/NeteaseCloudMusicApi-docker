From node:lts-alpine3.11
#RUN  sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories 
RUN  apk add --no-cache git
RUN git clone https://github.com/Binaryify/NeteaseCloudMusicApi.git /MiguMusicApi
RUN cd /MiguMusicApi
RUN npm install
RUN apk del git
EXPOSE 3000
ENTRYPOINT ["npm app.js"]
