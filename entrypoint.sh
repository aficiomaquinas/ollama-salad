#!/bin/bash -ex

# Start the Ollama server in the background
/bin/ollama serve &
SERVE_PID=$!

# Wait a brief moment to ensure the server is ready
sleep 5

# Pull the model, outputting progress directly to the log
echo "Pulling model $MODEL..."
/bin/ollama pull $MODEL

echo "Model $MODEL successfully pulled."

# Continue with server operation in the foreground
wait $SERVE_PID
exec /bin/ollama serve
