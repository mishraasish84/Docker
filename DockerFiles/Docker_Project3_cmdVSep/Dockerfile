FROM python:3.9

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the application code
COPY . .

# Set default command and entrypoint
ENTRYPOINT ["python", "myapp.py"]
CMD ["--config", "default_config.yaml"]
