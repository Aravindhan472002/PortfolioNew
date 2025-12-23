FROM nginx:alpine

# Remove default nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy your portfolio files
COPY . /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]

# 1️⃣ Set image name
IMAGE_NAME=localhost:8084/myproject/portfolio-site:latest

# 2️⃣ Build Docker image
docker build -t $IMAGE_NAME .

# 3️⃣ Push image to Harbor
docker push $IMAGE_NAME

