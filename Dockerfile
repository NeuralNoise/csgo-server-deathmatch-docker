FROM brandonstevens/csgo-server-sourcemod

ENV DEATHMATCH_VERSION v2.0.4d

ENV GAME_TYPE 1

ENV GAME_MODE 2

ENV MAPGROUP mp_active

ENV MAP de_dust2

USER daemon

RUN curl -L https://github.com/Maxximou5/csgo-deathmatch/releases/download/$DEATHMATCH_VERSION/deathmatch.zip -o /tmp/deathmatch.zip && \
    unzip -uo /tmp/deathmatch.zip -d /home/daemon/csgo/server/csgo/addons/sourcemod && \
    rm /tmp/deathmatch.zip

USER root
