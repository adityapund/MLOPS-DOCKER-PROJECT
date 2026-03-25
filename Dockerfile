FROM python:3.9-slim  #we use this as a base image for our application, which is a lightweight version of Python 3.9. This helps to keep the image size small while still providing the necessary environment to run our Python application.

WORKDIR /app  #we set the working directory to /app, which means that all subsequent commands will be executed in this directory

COPY . /app #we copy the contents of the current directory (where the Dockerfile is located) into the /app directory in the container.

RUN pip install --no-cache-dir -r requirements.txt  #we install the dependencies listed in the requirements.txt file using pip. The --no-cache-dir option is used to prevent pip from caching the downloaded packages.

EXPOSE 5000 #we expose port 5000, which is the port that our application will listen on.

CMD ["python", "sample.py"]

