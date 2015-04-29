FROM matteoredaelli/docker-java-rpi

RUN apt-get install -y --no-install-suggests curl

RUN curl -s http://d3kbcqa49mib13.cloudfront.net/spark-1.3.1-bin-hadoop2.4.tgz | tar -xz -C /opt
RUN cd /opt && ln -s spark-1.3.1-bin-hadoop2.4 spark
RUN mkdir /docker-shares
ENV SPARK_HOME /opt/spark
ENV PATH $PATH:$SPARK_HOME/bin
VOLUME ["/docker-shares"]
EXPOSE 8080 7077 
COPY run_spark_master.sh /opt/spark/sbin/
RUN chmod a+rx /opt/spark/sbin/run_spark_master.sh
ENTRYPOINT ["/opt/spark/sbin/run_spark_master.sh"]
