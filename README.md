Suggestions from https://github.com/sequenceiq/docker-spark/blob/master/Dockerfile
and adapted for Raspberry PI (archlinux)

docker run -d -t \
  --name spark \
  -p 8080:8080 \
  -p 7077:7077 \
  -v /docker-shares:/docker-shares \
  matteoredaelli/docker-spark-rpi
