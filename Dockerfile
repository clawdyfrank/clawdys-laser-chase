# Use a lightweight Nginx image to serve the static file
FROM nginx:alpine

# Copy the game file to the default Nginx public directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
