FROM gliderlabs/alpine
ADD package.json /srv/app/
WORKDIR /srv/app

RUN apk-install nodejs yarn \
    && yarn install \
    && addgroup app \
    && adduser -D -G app app

ADD . /srv/app
EXPOSE 3000
USER app
CMD ["yarn", "start"]
