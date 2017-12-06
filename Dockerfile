FROM osevg/workshopper:latest

ENV CONTENT_URL_PREFIX="file:///opt/data/workshopper-content"
ENV WORKSHOPS_URLS="file:///opt/data/workshopper-content/training.yml"
ENV DEFAULT_LAB="labguide"

ADD *.adoc /opt/data/workshopper-content/
ADD *.yml /opt/data/workshopper-content/
ADD images /opt/data/workshopper-content/images

USER root

RUN useradd -m jboss && mkdir /jboss
RUN chown jboss:root -R /opt/data && chmod 777 -R /opt/data

USER jboss