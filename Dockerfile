FROM registry.redhat.io/ubi9/nginx-120

# Copy your custom configuration file to the container
# this nginx.conf file includes the directory conf.d so that you can mount a configmap in it
# moreover it increases the server bucket size to 256
  COPY nginx.conf /etc/nginx/nginx.conf

# Expose the port that NGINX is listening on
EXPOSE 8080

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
