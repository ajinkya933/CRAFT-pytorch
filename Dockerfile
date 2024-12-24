# Use Python 3.9 slim image
FROM python:3.11

RUN pip install --upgrade pip

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libglib2.0-0 \
    libsm6 \
    libxext6 \
    libxrender-dev \
    libgl1-mesa-glx \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install torch and torchvision first (which will bring in opencv)
RUN pip install torch==2.2.2 torchvision==0.17.2

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt


