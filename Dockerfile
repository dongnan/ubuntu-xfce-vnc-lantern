FROM consol/ubuntu-xfce-vnc:latest

MAINTAINER DongNan "hidongnan@gmail.com"

ADD ./lantern/ /lantern/

EXPOSE 8787 18787

USER 0

RUN \
    apt-get update \
    && apt-get install -y gir1.2-appindicator3-0.1

USER 1000

CMD ["/lantern/lantern","--addr","0.0.0.0:8787","--uiaddr","0.0.0.0:18787"]
