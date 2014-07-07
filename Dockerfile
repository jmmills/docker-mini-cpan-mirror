# UPDATED: 

FROM jmmills/minicpan:latest
MAINTAINER = Jason M. Mills <jmmills@cpan.org>
ENV DEBIAN_FRONTEND noninteractive
RUN minicpan -l /cpan/ --remote-from cpan

RUN apt-get install -y nginx

CMD ["/bin/bash", "-l"]
