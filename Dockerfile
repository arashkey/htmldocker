# Use the official Nginx image
FROM nginx:latest

# Copy the Nginx configuration
COPY nginx.conf /etc/nginx/templates/default.conf.template

# Use environment variables to render the configuration at runtime
CMD ["/bin/bash", "-c", "envsubst < /etc/nginx/templates/default.conf.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"]

# Expose port 80
EXPOSE 80
