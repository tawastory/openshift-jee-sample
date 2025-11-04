FROM jboss-eap74-openjdk11-openshift:latest
USER root


COPY ROOT.war /opt/eap/standalone/deployments/

#COPY configuration/standalone-openshift.xml /opt/eap/standalone/configuration/standalone-openshift.xml
COPY configuration/standalone.conf /opt/eap/bin/standalone.conf

RUN mkdir -p /opt/eap/scouter/conf && mkdir -p /opt/eap/scouter/plugin
COPY scouter/*.jar /opt/eap/scouter/ 
COPY scouter/conf/*.conf /opt/eap/scouter/conf/
COPY scouter/plugin/* /opt/eap/scouter/plugin/

RUN chown -R jboss:root /opt/eap
USER jboss

CMD /usr/local/s2i/run
