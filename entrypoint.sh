#!/bin/sh

# Pull the model based on the MODEL_NAME environment variable
if /bin/ollama pull $MODEL_NAME; then
    echo "Model $MODEL_NAME successfully pulled."
else
    echo "Error: Failed to pull model $MODEL_NAME. Exiting."
    exit 1
fi

# If the model pull was successful, start the Ollama server
exec /bin/ollama serve
