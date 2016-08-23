FROM debian:jessie

RUN apt-get update
RUN apt-get install -y libgtk2-perl libgtk2-gladexml-perl libgd-gd2-perl cups-bsd wget
RUN wget http://apz.fi/blabel/blabel_0.07-1_all.deb -O /tmp/blabel.deb && dpkg -i /tmp/blabel.deb && rm -f /tmp/blabel.deb
RUN rm -rf /var/lib/apt/lists/*

CMD blabel
