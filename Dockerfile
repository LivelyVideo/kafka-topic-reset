FROM gcr.io/lively-video/kafka-server:latest
COPY kafkaDeleteRun.sh /
ENTRYPOINT ["/kafkaDeleteRun.sh"]
