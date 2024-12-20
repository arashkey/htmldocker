# Use the official Nginx image
FROM nginx:latest

# Copy your custom nginx.conf to the container
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy your HTML file to the Nginx HTML directory
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80
