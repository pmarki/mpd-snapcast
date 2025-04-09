# mpd-snapcast - MPD and snapcast in a single docker container

This repository contains a `docker-compose.yml` file that runs 1 alpine based container with:
* `mpd` - [Music Player Daemon](https://www.musicpd.org)
* `ympd` - [MPD Web UI](https://www.ympd.org/)
* `snapcast` - [SnapCast server](https://github.com/badaix/snapcast)
* `snapweb` - [SnapCast webinterface](https://github.com/badaix/snapweb)

## Requirements
* `docker`
* `docker-compose`
* `snapclient` installed locally
* Radio streams or music collection

## How to use:

* Copy repository to a server
* Open docker-compose.yaml and edit path to Music collection and/or ports
* Run `docker compose up`
* Open `http://SERVER_IP:6400` (or your ympd port if modified)
* Open `http://SERVER_IP:1780` (or your snapweb port if modified). There is a `test` stream for testing purposes

* Run `snapclient -h $HOST` on other machine and enjoy.

or

* Add mpd in homeassistant (`SERVER_IP:6600`)

## Notes

Tested on fairly powerfull x64 server
