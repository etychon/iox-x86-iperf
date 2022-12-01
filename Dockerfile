FROM alpine:latest

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm

ADD idle.sh /idle.sh

# Install.
RUN \
  apk add  --no-cache bash net-tools busybox-extras iperf3
  
# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

EXPOSE 5002

# Define default command.
CMD ["bash", "/idle.sh"]
