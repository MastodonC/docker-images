FROM logstash:5.2

RUN logstash-plugin install logstash-output-amazon_es

RUN apt-get update -y
RUN DEBIAN_FRONTEND=noninteractive apt-get -o Dpkg::Options::='--force-confdef' -o Dpkg::Options::='--force-confold' upgrade -y
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev libxml2-dev libxslt1-dev nodejs imagemagick postgresql-client nginx-extras
RUN rm -rf /var/lib/apt/lists/

RUN mkdir -p /etc/logstash
COPY logstash.conf /etc/logstash/