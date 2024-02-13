#!/bin/bash

tmux new-session -d -s ollama "ollama run ${MODEL}"

