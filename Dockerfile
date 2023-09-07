FROM registry.redhat.io/ubi9/nginx-120

# Copy your custom configuration file to the container
#COPY nginx.conf /etc/nginx/nginx.conf

# Expose the port that NGINX is listening on
EXPOSE 8080

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
