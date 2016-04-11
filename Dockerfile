FROM micheladaio/ruby:2.3

ENV PHANTOM_JS="phantomjs-2.1.1-linux-x86_64"

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y build-essential chrpath libssl-dev libxft-dev \
    libfreetype6 libfreetype6-dev libfontconfig1 libfontconfig1-dev qt5-default \
    libqt5webkit5-dev gstreamer1.0-plugins-base gstreamer1.0-tools
    gstreamer1.0-x imagemagick nodejs cmake

RUN curl -L -O https://bitbucket.org/ariya/phantomjs/downloads/$PHANTOM_JS.tar.bz2

RUN tar xvjf $PHANTOM_JS.tar.bz2 && \
    mv $PHANTOM_JS /usr/local/share && \
    ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/local/bin
