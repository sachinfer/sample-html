# Use the official NGINX image as the base
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Remove default nginx index file
RUN rm -rf ./*

# Copy all the project files into the container
COPY . .

# Expose port 80
EXPOSE 80

# NGINX already has the default CMD, no need to override
