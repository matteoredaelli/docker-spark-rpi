FROM yyolk/rpi-archlinuxarm
MAINTAINER matteoredaelli
RUN pacman -Syy
RUN pacman -S --noconfirm  extra/jdk8-openjdk
RUN curl -s http://d3kbcqa49mib13.cloudfront.net/spark-1.3.0-bin-hadoop2.4.tgz | tar -xz -C /opt
RUN cd /opt && ln -s spark-1.3.0-bin-hadoop2.4 spark
RUN mkdir /spark-data
ENV SPARK_HOME /opt/spark
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk
ENV PATH $PATH:$SPARK_HOME/bin
VOLUME ["/spark-data"]
EXPOSE 8080 7077 
ENTRYPOINT ["/opt/spark/sbin/start-master.sh"]
