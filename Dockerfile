FROM ruby:2.2.4

ADD /app /var/local/sinatra
RUN cd /var/local/sinatra; bundle install

EXPOSE 4567
CMD ["/usr/local/bundle/bin/foreman","start","-d","/var/local/sinatra"]
