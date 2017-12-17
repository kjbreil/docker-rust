#!/bin/bash

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

# running is for when running the docker to keep the image and server going
function running() {
  # attach to the tmux session
  tmux set -g status off && tmux attach 2> /dev/null

  # if something fails while attaching to the tmux session then just wait
  while : ; do
    sleep 360
  done
}

if [ "$1" != "" ]; then
  if ["$1" == "start" ]; then
    install
    start
  fi
else
  install
fi