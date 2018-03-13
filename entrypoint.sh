#!/bin/bash

# Install is actuall install or update
function install() {
  /steam/steamcmd.sh +login anonymous +force_install_dir /server/ +app_update 258550 +quit
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
    update
    sleep 3600
  done
}

function test1() {
  echo "TEST - 1"
}

function test2() {
  echo "TEST - 2"
}


if [ "$1" != "" ]; then
  if [ "$1" == "install" ]; then
    install
  fi
else
  test2
fi