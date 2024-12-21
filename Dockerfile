# Use the official Nginx image
FROM nginx:latest

# Expose port 80
EXPOSE 80

# Copy the Nginx configuration
COPY nginx.conf /etc/nginx/templates/default.conf.template
#COPY template-variables /etc/nginx/templates/10-variables.conf.template

# Use environment variables to render the configuration at runtime
CMD ["/bin/bash", "-c", "envsubst < /etc/nginx/templates/default.conf.template | sed -e 's/§/$/g' > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"]

