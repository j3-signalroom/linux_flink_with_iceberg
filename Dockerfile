# Base image from https://nightlies.apache.org/flink/flink-docs-release-1.19/docs/deployment/resource-providers/standalone/docker/
FROM flink:1.19.1-scala_2.12-java11
    
# ---
# Download JARs to FLINK_HOME/lib to make them available to Flink
# ---
# --- Iceberg Flink Library
RUN curl -L https://repo1.maven.org/maven2/org/apache/iceberg/iceberg-flink-runtime-1.19/1.6.0/iceberg-flink-runtime-1.19-1.6.0.jar -o /opt/flink/lib/iceberg-flink-runtime-1.19-1.6.0.jar

# --- Hive Flink Library
RUN curl -L https://repo1.maven.org/maven2/org/apache/flink/flink-sql-connector-hive-3.1.3_2.12/1.19.1/flink-sql-connector-hive-3.1.3_2.12-1.19.1.jar -o /opt/flink/lib/flink-sql-connector-hive-3.1.3_2.12-1.19.1.jar

# --- Hadoop Common Classes
RUN curl -L https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-common/3.4.0/hadoop-common-3.4.0.jar -o /opt/flink/lib/hadoop-common-3.4.0.jar

# --- Hadoop AWS Classes
RUN curl -L https://repo.maven.apache.org/maven2/org/apache/flink/flink-shaded-hadoop-2-uber/2.8.3-10.0/flink-shaded-hadoop-2-uber-2.8.3-10.0.jar -o /opt/flink/lib/flink-shaded-hadoop-2-uber-2.8.3-10.0.jar 

# --- AWS Bundled Classes
RUN curl -L https://repo1.maven.org/maven2/software/amazon/awssdk/bundle/2.26.9/bundle-2.26.9.jar -o /opt/flink/lib/bundle-2.26.9.jar

# Install Nano to edit files
RUN apt update && apt install -y nano

CMD ["./bin/start-cluster.sh"]