FROM docker.io/bitnami/spark:3.4

COPY spark-3.3-bigquery-0.32.2.jar /opt/bitnami/spark/jars/
#RUN chmod 644 /opt/bitnami/spark/jars/spark-3.3-bigquery-0.32.2.jar

COPY gcs-connector-hadoop3-latest.jar /opt/bitnami/spark/jars/
#RUN chmod 644 /opt/bitnami/spark/jars/gcs-connector-hadoop3-latest.jar

COPY gcs_keyfile.json /opt/bitnami/spark/

COPY requirements.txt /opt/bitnami/spark/
COPY jupyter_install.sh /opt/bitnami/spark/

COPY my_entrypoint.sh /opt/bitnami/scripts/spark/my_entrypoint.sh
ENTRYPOINT ["/bin/sh","-c"]
CMD ["/opt/bitnami/scripts/spark/my_entrypoint.sh"]