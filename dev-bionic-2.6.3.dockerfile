FROM ubuntu:bionic

RUN apt update && apt install -y gnupg \
                                  apt-transport-https \
                                  ca-certificates \
                                  curl \
                                  build-essential \
                                  zlib1g-dev && \
    echo "deb https://apt.fullstaqruby.org ubuntu-18.04 main" > /etc/apt/sources.list.d/fullstaq-ruby.list && \
    curl -SLfO https://raw.githubusercontent.com/fullstaq-labs/fullstaq-ruby-server-edition/master/fullstaq-ruby.asc && \
    apt-key add fullstaq-ruby.asc && apt update && apt install -y fullstaq-ruby-2.6.3 && \
    echo 'eval "$(rbenv init -)"' >> /etc/bash.bashrc && rbenv global 2.6.3
