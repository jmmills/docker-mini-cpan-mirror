FROM jmmills/minicpan:latest
MAINTAINER = Jason M. Mills <jmmills@cpan.org>
ENV DEBIAN_FRONTEND noninteractive

ADD cpan /cpan
RUN minicpan -l /cpan/ --remote-from cpan

RUN apt-get install -y nginx

ENTRYPOINT ["/bin/bash"]
CMD ["-l"]
