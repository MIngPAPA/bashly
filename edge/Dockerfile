FROM dannyben/alpine-ruby

ENV PS1 "\n\n>> bashly \W \$ "
RUN apk add --no-cache git

ARG branch=master

WORKDIR /bashly
RUN git clone --branch $branch --depth 1 https://github.com/DannyBen/bashly.git .
RUN gem build bashly.gemspec
RUN gem install bashly*.gem

WORKDIR /app
RUN rm -rf /bashly

VOLUME /app
ENTRYPOINT ["bashly"]