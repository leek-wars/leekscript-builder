FROM ubuntu:disco

MAINTAINER Leek Wars "https://github.com/leek-wars"

# Install required packages
RUN apt-get update
RUN apt-get install -y --force-yes build-essential python wget libgmp-dev llvm-8-dev git
RUN ln -s /usr/lib/llvm-8/include/llvm /usr/include
RUN ln -s /usr/lib/llvm-8/include/llvm-c /usr/include
RUN ls -s /usr/lib/llvm-8/bin/llvm-config /usr/bin

# Install cpp-coveralls
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py
RUN pip install --user cpp-coveralls
ENV PATH $PATH:/root/.local/bin
