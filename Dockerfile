FROM centos:6
EXPOSE 80
CMD [ "/run.sh" ]

COPY data /tmp
RUN /tmp/install-httpd24-php70.sh
RUN mv /tmp/run.sh /
RUN rm -rf /tmp/*
