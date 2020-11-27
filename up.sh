docker build -t pullenti-server .
docker run -p 8080:8081 --name pullenti-server pullenti-server
