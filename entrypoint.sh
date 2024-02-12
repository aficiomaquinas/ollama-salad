#!/bin/sh

# Pull the model based on the MODEL_NAME environment variable
/bin/ollama pull $MODEL_NAME

# Start the Ollama server
exec /bin/ollama serve
