FROM jmmills/mini-cpan-mirror-initial:latest
MAINTAINER = Jason M. Mills <jmmills@cpan.org>
ENV DEBIAN_FRONTEND noninteractive

RUN minicpan -l /cpan/ --remote-from cpan
ENTRYPOINT ["/bin/bash"]
CMD ["-l"]
