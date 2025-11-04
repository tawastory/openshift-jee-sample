FROM jboss-eap74-openjdk11-openshift:latest
USER root

COPY configuration/standalone-openshift.xml /opt/eap/standalone/configuration/standalone-openshift.xml
COPY configuration/standalone.conf /opt/eap/bin/standalone.conf

RUN mkdir -p /opt/eap/scouter
COPY ./scouter/* /opt/eap/scouter/ 

RUN chown -R jboss:root /opt/eap
USER jboss

CMD /usr/local/s2i/run
