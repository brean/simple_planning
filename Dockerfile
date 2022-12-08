FROM alpine:3.17

RUN apk update && apk add \
    curl \
    unzip \
    boost-dev \
    boost-program_options \
    cmake \
    make \
    flex \
    bison \
    g++

COPY ./FF-v2.3 /ff/FF-v2.3

RUN cd /ff/FF-v2.3 && make

RUN mkdir -p /app
COPY problem.pddl /app
COPY domain.pddl /app

WORKDIR /app

CMD ["/ff/FF-v2.3/ff", "-o", "domain.pddl", "-f", "problem.pddl"]