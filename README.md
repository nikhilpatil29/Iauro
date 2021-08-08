IAURO Assignment

Dockerized Node Based Application

1. Create a dockerfile for Node based application

2. Create docker-compose.yml file. YML contains the frontend and database images, volumes, enviroment variable and port where we are exposing our docker containers.

3. Run docker-compose up command, It will start mysql container first then mongodb container and then It will build the node based dockerfile. Once image is build it will automatically start the container and start the application process and nginx server using start.sh script. 

NOTE:

I am using openssl for generating self-signed certificate. Below is the command which I am using.

openssl req -x509 -nodes -days 365 -subj "/C=CA/ST=QC/O=Company, Inc./CN=localhost" -addext "subjectAltName=DNS:localhost" -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt

