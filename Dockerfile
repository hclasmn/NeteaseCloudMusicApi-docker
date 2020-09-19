FROM node:alpine
WORKDIR NeteaseCloudMusicApi
RUN \
    apk add --no-cache git && \
    git clone https://github.com/Binaryify/NeteaseCloudMusicApi.git /NeteaseCloudMusicApi/ && \
    npm i
CMD ["node", "app.js"]
EXPOSE 3300
