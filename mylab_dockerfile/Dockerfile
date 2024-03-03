#Ubunut Image download from Dockerhub. docker pul ubuntu:latest
FROM ubuntu:latest

#Install apache. Create a container by using docker run command, then you have to get in to the container using docker exec -it container bash, in bash you have to tun command
RUN apt-get update && apt-get install -y apache2

##Expose the port
EXPOSE 80

# Start Apache in foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]

