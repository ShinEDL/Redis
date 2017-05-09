FROM ruby:2.2.5

RUN gem install redis
RUN curl -s http://download.redis.io/releases/redis-3.2.8.tar.gz | tar -xz -C /usr/local
RUN cd /usr/local && ln -s redis-3.2.8 redis
