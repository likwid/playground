FROM gliderlabs/alpine
ADD . /srv/app
WORKDIR /srv/app
RUN apk-install nodejs \
    && npm install -g npm \
    && npm install
EXPOSE 3000
CMD ["npm", "start"]
