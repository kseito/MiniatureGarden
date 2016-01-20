FROM ruby:2.2.4

ADD MiniatureGarden/ /var/local/sinatra
RUN cd /var/local/sinatra; bundle install

EXPOSE 4567
CMD ["/usr/local/bin/foreman","start","-d","/var/local/sinatra"]
