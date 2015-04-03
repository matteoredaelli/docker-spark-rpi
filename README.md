Suggestions from https://github.com/sequenceiq/docker-spark/blob/master/Dockerfile
and adapted for Raspberry PI (archlinux)

docker run -d -t \
  --name spark \
  -p 8080:8080 \
  -p 7077:7077 \
  -v /apps/spark-data:/spark-data \
  matteoredaelli/docker-spark-rpi
