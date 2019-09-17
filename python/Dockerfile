FROM python:3.7-alpine

# Create project directory (workdir)
RUN mkdir /app
WORKDIR /app

# Add requirements.txt to WORKDIR and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Add the remaining source code files to WORKDIR
COPY . .

ENTRYPOINT ["python"]

# The script to start on startup
CMD ["app.py"]
