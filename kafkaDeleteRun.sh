#!/bin/bash
echo "Deleting topic ${TOPIC}"
kafka-topics --bootstrap-server kafka-headless:9092 --topic ${TOPIC} --delete
echo "Waiting for topic to be deleted from cluster..."
sleep 1000
echo "Creating topic ${TOPIC} with ${PARTITIONS} partitions and ${REPLICATION} replications"
kafka-topics --bootstrap-server kafka-headless:9092 --topic ${TOPIC} --partitions ${PARTITIONS} --replication-factor ${REPLICATION} --create
echo "Finished"