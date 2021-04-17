# Get latest official centos from docker hub
FROM seasadmin/centos:latest

# Update yum
RUN yum update -y

# Install Apache
RUN yum install httpd -y

# Specify container listens on specific port
EXPOSE 80

#label
LABEL org.opencontainers.image.source=https://github.com/rmuhammad1/CapstoneProject3

# Start Apache server
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]

# Add Hello World HTML
RUN curl https://raw.githubusercontent.com/rmuhammad1/CapstoneProject3/main/html/index.html --output /var/www/html/index.html
