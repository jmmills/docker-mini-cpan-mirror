FROM jmmills/minicpan:latest
MAINTAINER = Jason M. Mills <jmmills@cpan.org>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install -y nginx

ADD cpan /cpan
RUN minicpan -l /cpan/ --remote-from cpan

ENTRYPOINT ["/bin/bash"]
CMD ["-l"]
