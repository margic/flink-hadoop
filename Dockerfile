FROM flink:1.11.2-scala_2.12-java8

COPY flink-conf.yaml $FLINK_HOME/conf/flink-conf.yaml

ENV HADOOP_UBER_URL=https://repo.maven.apache.org/maven2/org/apache/flink/flink-shaded-hadoop-2-uber/2.8.3-10.0/flink-shaded-hadoop-2-uber-2.8.3-10.0.jar
RUN wget -nv -O /opt/flink/lib/flink-shaded-hadoop-2-uber.jar "${HADOOP_UBER_URL}";

