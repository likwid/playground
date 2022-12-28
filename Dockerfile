FROM gliderlabs/alpine
ADD package.json /srv/app/
ADD package-lock.json /srv/app
WORKDIR /srv/app

RUN apk-install nodejs \
    && npm install \
    && addgroup app \
    && adduser -D -G app app

ADD . /srv/app
EXPOSE 3000
USER app
CMD ["yarn", "start"]
