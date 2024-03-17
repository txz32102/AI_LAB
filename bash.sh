#!/bin/bash

if [ "$1" = "cnn" ]; then
  # Navigate to the cnn-explainer directory and run serve in the background
  nohup sh -c 'cd cnn-explainer && serve -s public -l 3002 >> ServeLog.txt 2>&1 &' && \
  echo "CNN Explainer serve process started."
elif [ "$1" = "kill" ]; then
  # Kill the serve process serving the public folder on port 3002
  pkill -f 'serve -s public -l 3002' && \
  echo "CNN Explainer serve process killed."
elif [ "$1" = "clean" ]; then
  # Assuming you might also want to clean up logs related to the serve process
  rm -f ServeLog.txt
  echo "Logs cleaned."
else
  echo "Usage: sh script.sh [cnn|kill|clean]"
fi

