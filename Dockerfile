FROM docker.io/debian:buster

RUN curl -SsLf https://downloads.mongodb.com/compass/mongosh-1.9.1-linux-x64.tgz
RUN ar -x ./mongodb-mongosh_1.9.1_amd64.deb 
RUN tar -xvf data.tar.xz
RUN tmp=`pwd`
RUN export PATH="$tmp/usr/bin/:$PATH"

CMD ["sleep 10000000"]