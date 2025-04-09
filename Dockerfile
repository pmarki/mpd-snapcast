FROM alpine:latest
ARG MPD_UID
ARG MPD_GID
RUN apk add mpd shadow snapcast-server ympd supervisor wget unzip  && \
	usermod -u ${MPD_UID} -g ${MPD_GID} mpd && \
	mkdir -p /var/lib/mpd/media && \
	mkdir -p /var/lib/mpd/playlists && \
	chown -R ${MPD_UID}:${MPD_GID} /var/lib/mpd && \
	apk del shadow
RUN cd /tmp && wget https://github.com/badaix/snapweb/releases/download/v0.8.0/snapweb.zip && \ 
	 unzip -o snapweb.zip -d /usr/share/snapserver/snapweb/ && rm /tmp/snapweb.zip

USER mpd

COPY config/supervisord.conf /etc/supervisord.conf

CMD ["/usr/bin/supervisord"]

