# Step 1: Use an official Nginx image from the Docker Hub
FROM nginx:alpine

# Step 2: Copy the React build files into the Nginx server's root directory
COPY ./build /usr/share/nginx/html

# Step 3: Expose port 80 so the application can be accessed externally.....................
EXPOSE 80

# Step 4: Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
