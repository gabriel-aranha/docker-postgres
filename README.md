## Docker project to run PostgreSQL for use by other systems on the same network

## Quickstart

### Setup
Clone this repository:
```
$ git clone git@github.com:gabriel-aranha/docker-postgres.git
```
Enter the folder:
```
$ cd docker-postgres
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
<ip-on-local-network>:5432
```
