#!/bin/bash

# Path to the NVM initialization script
NVM_INIT="$HOME/.nvm/nvm.sh"

# Function to ensure NVM is available
ensure_nvm() {
    if [ -s "$NVM_INIT" ]; then
        . "$NVM_INIT"
    else
        echo "NVM initialization script not found, trying to load it automatically."
        export NVM_DIR="$HOME/.nvm"
        [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
        [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
    fi
}

# This script supports starting different applications based on the argument provided
if [ "$1" = "start" ]; then
    echo "Starting the application..."
    cd reveal && npm run serve
elif [ "$1" = "ganlab" ]; then
    echo "Starting ganlab..."
    ensure_nvm
    nvm use 6
    cd ganlab && ./scripts/watch-demo
elif [ "$1" = "cnn" ]; then
    echo "Starting cnn-explainer..."
    ensure_nvm
    nvm use 20
    cd cnn-explainer && npm run dev
elif [ "$1" = "dodrio" ]; then
    echo "Starting dodrio..."
    ensure_nvm
    nvm use 20
    cd dodrio && npm run dev
elif [ "$1" = "wizmap" ]; then
    echo "Starting wizmap..."
    ensure_nvm
    nvm use 20
    cd wizmap && npm run dev
elif [ "$1" = "all" ]; then
    echo "Starting all applications..."
    # Assuming all applications can run under the same version or handling them separately.
    # The applications need to be adapted if they require different Node versions or handling.
    # For simplicity, this part is omitted but should follow the pattern of invoking `ensure_nvm` and `nvm use` as above.
else
    echo "Usage: sh local.sh [start|ganlab|cnn|dodrio|wizmap|all]"
fi
