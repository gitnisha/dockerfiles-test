FROM redhat-openjdk-18/openjdk18-openshift

USER root
RUN mkdir /data
RUN chown -R jboss /data \
  && usermod -g root -G `id -g jboss` jboss \
  && chmod -R "g+rwX" /data \
  && chown -R jboss:root /data
USER jboss

# path to the data directory (persistent volume)
ARG OBJECT_STORE_PATH="../../data"
ENV OBJECT_STORE_PATH $OBJECT_STORE_PATH

# expected values INFO, DEBUG, TRACE...
ARG LOG_LEVEL="INFO" 
ENV LOG_LEVEL=$LOG_LEVEL

ENV JAVA_OPTIONS -Xmx512m -Dswarm.logging=$LOG_LEVEL -Dswarm.transactions.object-store-path=$OBJECT_STORE_PATH

ENV AB_ENABLED off
ENV JAVA_APP_JAR lra-coordinator-swarm.jar

EXPOSE 8080

# cd $NARAYANA_HOME/rts/lra/lra-coordinator
ADD target/lra-coordinator-swarm.jar /deployments/

