csgo-server-deathmatch-docker
============

# What is Counter-Strike: Global Offensive?

Counter-Strike: Global Offensive (CS:GO) is an online first-person shooter developed by Hidden Path Entertainment and Valve Corporation. It is the fourth game in the main Counter-Strike franchise.

## Deathmatch Plugin

This Docker image uses [SourceMod](http://www.sourcemod.net/) and [Maxximou5](http://www.maxximou5.com/)'s [csgo-deathmatch plugin](https://github.com/Maxximou5/csgo-deathmatch).

# How to use this image


## Running CSGO Dedicated Server

1. Create a Steam account token here: http://steamcommunity.com/dev/managegameservers.

2. Run the container:

    $ docker run -d -P -e STEAM_GAME_SERVER_TOKEN=1234567890 brandonstevens/csgo-server-deathmatch

### Specifying a SourceMod Admin Config

    $ docker run -d -P -e STEAM_GAME_SERVER_TOKEN=1234567890 -v /home/ubuntu/admins.cfg:/home/daemon/csgo/server/csgo/addons/sourcemod/configs/admins.cfg brandonstevens/csgo-server-deathmatch

### Specifying a Deathmatch Config

    $ docker run -d -P -e STEAM_GAME_SERVER_TOKEN=1234567890 -v /home/ubuntu/admins.cfg:/home/daemon/csgo/server/csgo/addons/sourcemod/configs/admins.cfg -v /home/ubuntu/gamemode_deathmatch_server.cfg:/home/daemon/csgo/server/csgo/cfg/gamemode_deathmatch_server.cfg brandonstevens/csgo-server-deathmatch

## Environment Variables

The CSGO Dedicated Server image that the Deathmatch image builds on uses several environment variables which are easy to miss. Please see https://github.com/brandonstevens/csgo-server-docker for more information on the environment variables.
