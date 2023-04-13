FROM python:3.11-slim
ENV PIP_NO_CACHE_DIR=yes
RUN apt-get -y update
RUN apt-get -y install git
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY scripts/ .
CMD ["sleep", "infinity"]
