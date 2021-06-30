#!/bin/bash
echo "Deleting topic ${TOPIC}"
kafka-topics --bootstrap-server kafka-headless:9092 --topic ${TOPIC} --delete
sleep 20
echo "Creating topic ${TOPIC}"
kafka-topics --bootstrap-server kafka-headless:9092 --topic ${TOPIC} --partitions ${PARTITIONS} --replication-factor ${REPLICATION} --create
echo "Finished"