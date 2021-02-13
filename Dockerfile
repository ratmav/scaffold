FROM golang:1.14-buster

# update package cache.
RUN apt-get update

# install psql
RUN apt install -y postgresql postgresql-contrib

# point at shared source directory.
RUN mkdir /scaffold
WORKDIR /scaffold

# leave dev container running for interactive use.
ENTRYPOINT ["tail", "-f", "/dev/null"]
