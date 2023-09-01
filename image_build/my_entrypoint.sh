#!/bin/bash

# I should make a seperate image for the master node with jupyter
# but I am low on SSD space
# Also works inconsistently. May be problem with WSL 2
if [ "$SPARK_MODE" == "master" ]
then
    echo "IP of the master node is" $(hostname -I)
    sh jupyter_install.sh &
else
    # Mitigate trying to connect as master is installing jupyter
    # May need tweaking
    sleep 20
fi

exec /opt/bitnami/scripts/spark/entrypoint.sh /opt/bitnami/scripts/spark/run.sh