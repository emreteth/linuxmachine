FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    systemd \
    systemd-sysv \
    dbus \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

VOLUME [ "/sys/fs/cgroup" ]

CMD ["/sbin/init"]
