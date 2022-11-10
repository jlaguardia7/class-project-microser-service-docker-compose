FROM  python:3.6-slim
ADD ./app
WORKDIR /app
RUN apt update -y
RUN apt install -y git
RUN apt install -y python3-pip
RUN git clone https://github.com/devopseasylearning/class-project-microser-service-docker-compose.git
RUN cd class-project-microser-service-docker-compose/endgamefrontend
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
RUN python3 app.py

ENTRYPOINT [ "python"]

EXPOSE 5000
