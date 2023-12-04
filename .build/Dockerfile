FROM debian:bullseye
LABEL maintainer="Underport <pkecastillo@gmail.com>"
COPY install-repos.sh /home/install-repos.sh
RUN chmod 777 -R /home/*
RUN /home/install-repos.sh
RUN rm -fr /home/install-repos.sh