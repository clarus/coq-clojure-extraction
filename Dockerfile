FROM ubuntu
MAINTAINER Guillaume Claret

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y git make

# OCaml
RUN apt-get install -y ocaml camlp4-extra

# Coq
RUN apt-get install -y coq libcoq-ocaml-dev

# Compile and install
ADD . /root/coq-clojure-extraction
WORKDIR /root/coq-clojure-extraction
RUN make clean ; ./configure.sh && make && make install

# Test
WORKDIR /root/coq-clojure-extraction/tests
RUN coqc test1.v