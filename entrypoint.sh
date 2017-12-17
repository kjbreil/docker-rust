#!/bin/bash

# tmux set -g status off && tmux attach 2> /dev/null

if [ "$RUST_UPDATE" == "1" ]
  then
    ./rustserver update-lgsm
    ./rustserver update
fi

if [ "$RUST_FORCE_UPDATE" == "1" ]
  then
    ./rustserver update-lgsm
    ./rustserver force-update
fi

./rustserver start

# trap exit signals
trap stop INT SIGINT SIGTERM

# stop the rust server
function stop() {
  ./rustserver stop
  # just to be sure wait 10 seconds
  sleep 10
  exit 0
}

# attach to the tmux session
tmux set -g status off && tmux attach 2> /dev/null

# if something fails while attaching to the tmux session then just wait
while :
do
  sleep 360
done
