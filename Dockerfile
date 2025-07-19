# Use a lightweight Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy all project files
COPY . .

# Install pip, dependencies, and dotenv support
RUN pip install --upgrade pip && \
    pip install pyrogram tgcrypto python-dotenv

# Run the bot
CMD ["python", "main.py"]
