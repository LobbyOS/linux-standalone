#!/bin/bash

# The path to Lobby folder
workingDir=$(dirname "$(readlink -f "$0")")
workingDir="$workingDir/.."

# Set Document Root
cd "$workingDir/lobby"

LD_LIBRARY_PATH=$LD_LIBRARY_PATH:"$workingDir/php/extensions"

export LD_LIBRARY_PATH

# Run PHP Server
"$workingDir/php/php" -t "$workingDir/lobby" -c "$workingDir/php/php.ini" -S "$1" "index.php" "LobbyPHPCliServer"
