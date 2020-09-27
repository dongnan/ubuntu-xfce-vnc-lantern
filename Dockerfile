FROM consol/ubuntu-xfce-vnc:latest

MAINTAINER DongNan "hidongnan@gmail.com"


EXPOSE 8787 18787

USER 0

RUN \
    apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y gir1.2-appindicator3-0.1

#RUN \
#    apt-get install -y gcc cmake \
#    && apt autoremove -y
#
#RUN \
#    cd /root \
#    && wget http://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz \
#    && tar zxvf m4-1.4.18.tar.gz \
#    && cd m4-1.4.18 \
#    && ./configure && make && make install
#
#RUN \
#    cd /root \
#    && wget http://ftp.gnu.org/gnu/bison/bison-3.0.5.tar.gz \
#    && tar zxvf bison-3.0.5.tar.gz \
#    && cd bison-3.0.5 \
#    && ./configure && make && make install
#
#RUN \
#    cd /root \
#    && wget http://ftp.gnu.org/gnu/gawk/gawk-4.2.1.tar.gz \
#    && tar zxvf gawk-4.2.1.tar.gz \
#    && cd gawk-4.2.1 \
#    && ./configure && make && make install
#
#RUN \
#    cd /root \
#    && wget http://ftp.gnu.org/gnu/libc/glibc-2.28.tar.gz \
#    && tar zxvf glibc-2.28.tar.gz \
#    && cd glibc-2.28 \
#    && mkdir build \
#    && cd build \
#    && ../configure --disable-sanity-checks \
#    && make && make install

USER 1000

ADD ./lantern/lantern /lantern/lantern

CMD ["/lantern/lantern","--addr","0.0.0.0:8787","--uiaddr","0.0.0.0:18787"]
