# I used Nginx as a web server.

# Base Image file. 
FROM nginx

# I installed PHP 7.1.
RUN apt-get update && apt-get install -y php7.1

#I copied the quickdbtest.php file to the root directory of the Nginx web server inside the Docker container.
COPY ./quickdbtest.php /usr/share/nginx/html/

# I opened port 80.
EXPOSE 80     

# It allows starting the nginx web server to run in the foreground.
CMD ["nginx", "-g", "daemon off;"]