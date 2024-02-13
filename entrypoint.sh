#!/bin/bash

echo "Downloading model $MODEL"
tmux new-session -d -s ollama "ollama run ${MODEL}"

