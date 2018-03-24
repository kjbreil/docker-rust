#!/bin/bash


printf "# Each time the docker starts these will be overwritten\n\n" > /home/server/lgsm/config-lgsm/rustserver/rustserver.cfg

printf "ip="%s"\n" "$RUST_SERVER_IP" >> /home/server/lgsm/config-lgsm/rustserver/rustserver.cfg
printf "port="%s"\n" "$RUST_SERVER_PORT" >> /home/server/lgsm/config-lgsm/rustserver/rustserver.cfg
printf "rconport="%s"\n" "$RUST_RCON_PORT" >> /home/server/lgsm/config-lgsm/rustserver/rustserver.cfg
printf "rconpassword="%s"\n" "$RUST_RCON_PASSWORD" >> /home/server/lgsm/config-lgsm/rustserver/rustserver.cfg
printf "rconweb="%s"\n" "$RUST_RCON_WEB" >> /home/server/lgsm/config-lgsm/rustserver/rustserver.cfg
printf "servername="%s"\n" "$RUST_SERVER_NAME" >> /home/server/lgsm/config-lgsm/rustserver/rustserver.cfg
printf "maxplayers="%s"\n" "$RUST_SERVER_MAXPLAYERS" >> /home/server/lgsm/config-lgsm/rustserver/rustserver.cfg
printf "seed="%s"\n" "$RUST_SERVER_SEED" >> /home/server/lgsm/config-lgsm/rustserver/rustserver.cfg
printf "worldsize="%s"\n" "$RUST_SERVER_WORLDSIZE" >> /home/server/lgsm/config-lgsm/rustserver/rustserver.cfg
printf "saveinterval="%s"\n" "$RUST_SERVER_SAVE_INTERVAL" >> /home/server/lgsm/config-lgsm/rustserver/rustserver.cfg
printf "tickrate="%s"\n\n\n" "$RUST_SERVER_TICKRATE" >> /home/server/lgsm/config-lgsm/rustserver/rustserver.cfg
# printf "servicename="%s"\n" "$RUST_SERVER_IDENTITY" >> /home/server/lgsm/config-lgsm/rustserver/rustserver.cfg

printf "# Each time the docker starts these will be overwritten\n\n" > /home/server/serverfiles/server/rustserver/cfg/server.cfg

printf "server.description %s\n" "$RUST_SERVER_DESCRIPTION" >> /home/server/serverfiles/server/rustserver/cfg/server.cfg
printf "server.headerimage %s\n" "$RUST_SERVER_BANNER_URL" >> /home/server/serverfiles/server/rustserver/cfg/server.cfg
printf "server.url %s\n" "$RUST_SERVER_URL" >> /home/server/serverfiles/server/rustserver/cfg/server.cfg
printf "server.globalchat %s\n" "$RUST_SERVER_GLOBALCHAT" >> /home/server/serverfiles/server/rustserver/cfg/server.cfg
printf "server.pve %s\n" "$RUST_SERVER_PVE" >> /home/server/serverfiles/server/rustserver/cfg/server.cfg
printf "decay.scale %s\n" "$RUST_DECAY_SCALE" >> /home/server/serverfiles/server/rustserver/cfg/server.cfg
printf "decay.tick %s\n" "$RUST_DECAY_TICK" >> /home/server/serverfiles/server/rustserver/cfg/server.cfg
printf "falldamage.enabled %s\n" "$RUST_FALLDAMAGE" >> /home/server/serverfiles/server/rustserver/cfg/server.cfg
printf "heli.lifetimeminutes %s\n" "$RUST_HELI_LIFETIME_MINUTES" >> /home/server/serverfiles/server/rustserver/cfg/server.cfg
printf "heli.bulletAccuracy %s\n" "$RUST_HELI_ACCURACY" >> /home/server/serverfiles/server/rustserver/cfg/server.cfg
printf "heli.bulletDamageScale %s\n" "$RUST_HELI_DAMAGE" >> /home/server/serverfiles/server/rustserver/cfg/server.cfg
printf "spawn.min_rate %s\n" "$RUST_SPAWN_MIN_RATE" >> /home/server/serverfiles/server/rustserver/cfg/server.cfg
printf "spawn.max_rate %s\n" "$RUST_SPAWN_MAX_RATE" >> /home/server/serverfiles/server/rustserver/cfg/server.cfg
printf "spawn.min_density %s\n" "$RUST_SPAWN_MIN_DENSITY" >> /home/server/serverfiles/server/rustserver/cfg/server.cfg
printf "spawn.max_density %s\n" "$RUST_SPAWN_MAX_DENSITY" >> /home/server/serverfiles/server/rustserver/cfg/server.cfg
printf "sbradley.enabled %s\n" "$RUST_BRADLEY_ENABLED" >> /home/server/serverfiles/server/rustserver/cfg/server.cfg
printf "sai.think %s\n" "$RUST_SAI_THINK" >> /home/server/serverfiles/server/rustserver/cfg/server.cfg
printf "sai.move %s\n" "$RUST_SAI_MOVE" >> /home/server/serverfiles/server/rustserver/cfg/server.cfg
printf "sai.frametime %s\n" "$RUST_SAI_FRAMETIME" >> /home/server/serverfiles/server/rustserver/cfg/server.cfg
printf "sai.tickrate %s\n" "$RUST_SAI_TICKRATE" >> /home/server/serverfiles/server/rustserver/cfg/server.cfg
printf "craft.instant %s\n" "$RUST_CRAFT_INSTANT" >> /home/server/serverfiles/server/rustserver/cfg/server.cfg
printf "server.radiation %s\n" "$RUST_SERVER_RADIATION" >> /home/server/serverfiles/server/rustserver/cfg/server.cfg
printf "server.meleedamage %s\n" "$RUST_SERVER_MELEEDAMAGE" >> /home/server/serverfiles/server/rustserver/cfg/server.cfg
printf "server.arrowdamage %s\n" "$RUST_SERVER_ARROWDAMAGE" >> /home/server/serverfiles/server/rustserver/cfg/server.cfg
printf "server.bulletdamage %s\n" "$RUST_SERVER_BULLETDAMAGE" >> /home/server/serverfiles/server/rustserver/cfg/server.cfg
printf "server.bleedingdamage %s\n" "$RUST_SERVER_BLEEDINGDAMAGE" >> /home/server/serverfiles/server/rustserver/cfg/server.cfg
printf "server.meleearmor %s\n" "$RUST_SERVER_MELEEARMOR" >> /home/server/serverfiles/server/rustserver/cfg/server.cfg
printf "server.arrowarmor %s\n" "$RUST_SERVER_ARROWARMOR" >> /home/server/serverfiles/server/rustserver/cfg/server.cfg
printf "server.bulletarmor %s\n" "$RUST_SERVER_BULLETARMOR" >> /home/server/serverfiles/server/rustserver/cfg/server.cfg
printf "server.bleedingarmor %s\n" "$RUST_SERVER_BLEEDINGARMOR" >> /home/server/serverfiles/server/rustserver/cfg/server.cfg
printf "server.planttick %s\n" "$RUST_SERVER_PLANTTICK" >> /home/server/serverfiles/server/rustserver/cfg/server.cfg
printf "server.planttickscale %s\n" "$RUST_SERVER_PLANTTICKSCALE" >> /home/server/serverfiles/server/rustserver/cfg/server.cfg
printf "server.respawnresetrange %s\n" "$RUST_SERVER_RESPAWNRESETRANGE" >> /home/server/serverfiles/server/rustserver/cfg/server.cfg

# Install is actuall install or update
function install() {
  if [ "$RUST_UPDATE" == "1" ]; then
      ./rustserver update-lgsm
      ./rustserver update
  fi
  
  if [ "$RUST_FORCE_UPDATE" == "1" ]; then
      ./rustserver update-lgsm
      ./rustserver force-update
  fi

  if [ ! -d ./serverfiles ]; then
    ./rustserver update-lgsm
    ./rustserver auto-install
  fi
}


function start() {
  if [ ! -d ./serverfiles ]; then
    install
  else
     # trap exit signals
    trap stop INT SIGINT SIGTERM
    ./rustserver start
    sleep 10
    running
  fi
}

# stop the rust server
function stop() {
  ./rustserver stop
  # just to be sure wait 10 seconds
  sleep 10
  exit 0
}

# validate and update scripts and server
function update() {
	./rustserver update-functions
	./rustserver update
}

# running is for when running the docker to keep the image and server going
function running() {
  # attach to the tmux session
  # tmux set -g status off && tmux attach 2> /dev/null

  # if something fails while attaching to the tmux session then just wait
  while : ; do
    # update
    sleep 3600
  done
}

if [ "$1" != "" ]; then
  if [ "$1" == "start" ]; then
    start
  fi
else
  install
fi