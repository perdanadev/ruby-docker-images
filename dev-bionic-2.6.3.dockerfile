FROM ukazap/ruby:prod-bionic-2.6.3

RUN apt update && apt install -y build-essential zlib1g-dev && \
    apt clean && apt autoclean
