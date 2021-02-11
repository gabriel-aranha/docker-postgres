## Docker project to run PostgreSQL on a Raspberry Pi for use by other systems on the same network

### Requirements:
This project was tested on:  
Raspberry Pi 4 Model B 4gb rev 1.2  
Ubuntu Server 20.04.2 LTS (GNU/Linux 5.4.0-1028-raspi aarch64)  
Docker version 20.10.3, build 48d30b5

## Quickstart

### Setup
Clone this repository:
```
$ git clone git@github.com:gabriel-aranha/pi-docker-postgres.git
```
Enter the folder:
```
$ cd pi-docker-postgres
```
Edit the Dockerfile to set user(SECRET_USER) and password(SECRET_PASSWORD):
```
$ nano Dockerfile
```
Edit the postgresql.conf file if more configuration is needed for your case:
```
$ nano postgresql.conf
```

### Running
Command to build Docker image:
```
$ docker build -t postgres .
```
Command to run Docker container:
```
$ docker run --name postgres -d -p 0.0.0.0:5432:5432 --restart unless-stopped --network=host postgres
```
PostgreSQL can then be accessed from other systems using the following ip and port:
```
<pi-ip-on-local-network>:5432
```