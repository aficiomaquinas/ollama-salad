#!/bin/sh

# Start the Ollama server in the background to allow model pulling
/bin/ollama serve &
SERVE_PID=$!

# Wait a brief moment for the server to initialize
sleep 5

# Attempt to pull the model
if /bin/ollama pull $MODEL_NAME; then
    echo "Model $MODEL_NAME successfully pulled."
else
    echo "Error: Failed to pull model $MODEL_NAME. Exiting."
    kill $SERVE_PID
    exit 1
fi

# If needed, restart the server to apply the pulled model
# This step depends on whether the server needs to be restarted 
# after pulling a model to make it available for use
kill $SERVE_PID
wait $SERVE_PID

# Now, start the Ollama server in the foreground
exec /bin/ollama serve
