FROM ollama/ollama:latest

# Set an environment variable for the model name with a default value
ENV MODEL_NAME=mistral

# Copy the entrypoint script into the container
COPY entrypoint.sh /entrypoint.sh

# Make the entrypoint script executable
RUN chmod +x /entrypoint.sh

# Install tmux
RUN apt-get install -y tmux

# Set the entrypoint script to be executed when the container starts
ENTRYPOINT /bin/ollama serve & /entrypoint.sh
