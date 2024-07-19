# connection api
docker build -t connection .
docker run -d -p 50052:50052 connection
docker tag connection khanglb/connection:latest
docker push khanglb/connection:latest