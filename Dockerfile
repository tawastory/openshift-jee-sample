FROM jboss-eap74-openjdk11-openshift:latest
USER root
COPY upload/src /tmp/src
RUN chown -R 185:0 /tmp/src
USER 185
RUN /usr/local/s2i/assemble
CMD /usr/local/s2i/run
