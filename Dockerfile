FROM jboss-eap74-openjdk11-openshift:latest
USER root

RUN chown -R jboss:root /opt/eap
USER jboss

CMD /usr/local/s2i/run
