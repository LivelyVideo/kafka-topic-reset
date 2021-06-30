# kafka-topic-reset

## Contianer build and example cronjob template to deploy a topic delete and re-create service.

The container is built from the normal kafka server with all included binaries.  It takes 3 variables - the topic name, the partitions and replication factor for the topic - and deletes, then re-create the topic with those partitions and replication-factor set.  Other configs can be added to the topic without much issue.  The cronjob template can be adapted to a helm chart without much trouble as well.  This is a basic cronjob to use for testing and dev environments.

 gcr.io/lively-video/kafka-topic-reset:latest - current image name/tag 