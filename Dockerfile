FROM codehz/wine:bdlauncher-runtime

# adduser
RUN adduser -D -h /home/container container

# user
USER container
ENV USER=container HOME=/home/container

# entrypoint
COPY ./entrypoint.sh /entrypoint.sh
CMD [ "/bin/sh", "/entrypoint.sh" ]
