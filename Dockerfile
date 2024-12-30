# Use an official NGINX image to serve static content
FROM nginx:alpine

# Set the working directory in the container
WORKDIR /usr/share/nginx/html

# Copy your static files to the NGINX web directory
COPY . .

# Expose port 80 to allow traffic
EXPOSE 80

# Command to run NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]