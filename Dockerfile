# Use the official Nginx image from Docker Hub
FROM nginx:latest

# Remove the default Nginx configuration to avoid conflicts
RUN rm /etc/nginx/conf.d/default.conf

# Copy the custom Nginx configuration file
COPY nginx.conf /etc/nginx/conf.d/

# Copy the static site files to the Nginx web root directory
COPY ./frontend /usr/share/nginx/html

# Expose port 80 for HTTP traffic
EXPOSE 80
