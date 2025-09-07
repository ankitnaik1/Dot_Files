#!/bin/fish
cd ${PWD}/Deluge
podman compose pull
podman compose down && podman compose up -d
cd ${PWD}/ErsatzTV
podman compose pull
podman compose down && podman compose up -d
cd ${PWD}/Invidious
podman compose pull
podman compose down && podman compose up -d
cd ${PWD}/Jellyfin
podman compose pull
podman compose down && podman compose up -d
cd ${PWD}/JioTV
podman compose pull
podman compose down && podman compose up -d
cd ${PWD}/Redlib
podman compose pull
podman compose down && podman compose up -d
cd ${PWD}/Samba
podman compose pull
podman compose down && podman compose up -d
cd ${PWD}/Syncthing
podman compose pull
podman compose down && podman compose up -d
cd ${PWD}/Traefik
podman compose pull
podman compose down && podman compose up -d
cd ${PWD}/Zee5
podman compose pull
podman compose down && podman compose up -d
podman image prune -f
