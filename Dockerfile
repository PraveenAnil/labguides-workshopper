FROM osevg/workshopper:latest

ENV CONTENT_URL_PREFIX="file:///workshopper-content"
ENV WORKSHOPS_URLS="file:///workshopper-content/_cloud-native-roadshow.yml"
ENV DEFAULT_LAB="roadshow"

ADD *.adoc /workshopper-content/
ADD *.yml /workshopper-content/
ADD images /workshopper-content/images

USER root

RUN chown jboss:root -R /opt/data && chmod 777 -R /opt/data

USER jboss