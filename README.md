# Apache Flink with Hadoop and Apache Iceberg support for Linux machines
This repository hosts the [`Dockerfile`](https://github.com/j3-signalroom/mac_flink-with_hadoop_iceberg/blob/main/Dockerfile), which defines the Apache Flink Docker image with Hadoop and Apache Iceberg for Linux machines.  The official Apache Flink image on [Docker Hub](https://hub.docker.com/_/flink/) does not contain Hadoop and Apache Iceberg dependencies.  This image extends the official image by adding the Flink-provided Hadoop Uber JAR and Apache Iceberg.  You can use this Docker image to deploy Flink in [Session Mode](https://github.com/j3-signalroom/j3-techstack-lexicon/blob/main/apache-flink-glossary.md#flink-session-mode) or [Application Mode](https://github.com/j3-signalroom/j3-techstack-lexicon/blob/main/apache-flink-glossary.md#flink-application-mode) cluster on Docker, which allows you to read and write to Apache Iceberg tables.

## Resources

[Apache Flink 1.19.1](https://nightlies.apache.org/flink/flink-docs-release-1.19/)

[Apache Iceberg 1.6.0](https://github.com/apache/iceberg/releases/tag/apache-iceberg-1.6.0)