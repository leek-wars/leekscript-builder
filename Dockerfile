FROM gcc:5.3

MAINTAINER Leek Wars "https://github.com/leek-wars"

# Install required packages
RUN apt-get update
RUN apt-get install -y --force-yes autoconf texinfo bison flex python libgmp-dev llvm-6.0

# Install cpp-coveralls
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py
RUN pip install --user cpp-coveralls
ENV PATH $PATH:/root/.local/bin
