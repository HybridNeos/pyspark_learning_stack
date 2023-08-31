#!/bin/bash

if [ "$SPARK_MODE" == "master" ]
then
    echo "IP of the master node is" $(hostname -I)
    sh jupyter_install.sh
else
    # Prevent trying to connect as master is installing jupyter
    sleep 15
fi

exec /opt/bitnami/scripts/spark/entrypoint.sh /opt/bitnami/scripts/spark/run.sh