FROM ruby:2.3.0-alpine

ENV APP_ROOT /usr/src/radvent
WORKDIR $APP_ROOT
EXPOSE 3000

COPY . $APP_ROOT

RUN apk update --no-cache && \
    apk add --update --no-cache  nodejs sqlite-dev tzdata && \
    apk add --no-cache --virtual .ruby-builddeps curl gcc g++ make libc-dev && \
    bundle install && \
    apk del .ruby-builddeps

CMD ["./startup.sh"]
