FROM ubuntu:16.04
MAINTAINER sminot@fredhutch.org

# Install prerequisites
RUN apt update && \
    apt-get install -y wget curl unzip python3 python3-pip bats \
    awscli libcurl4-openssl-dev

RUN cd /usr/local/bin && \
    wget ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/2.7.1/ncbi-blast-2.7.1+-x64-linux.tar.gz && \
    tar xzvf ncbi-blast-2.7.1+-x64-linux.tar.gz

# Add the script to the PATH
ADD ./run.py /usr/local/bin/

RUN mkdir /scratch

# Run tests
ADD tests/ /usr/local/tests
RUN bats /usr/local/tests && \
    rm -r /usr/local/tests
