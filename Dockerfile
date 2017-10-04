FROM ruby:2.4.0
 
RUN mkdir -p /usr/src/desafio-nutripad
WORKDIR /usr/src/desafio-nutripad
 
ENV BUNDLE_PATH /box
 
COPY . /usr/src/desafio-nutripad