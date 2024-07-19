# connection api
docker build -t connection .
docker run -d -p 50052:50052 connection
docker tag connection khanglb/connection:latest
docker push khanglb/connection:latest

# persons api
docker build -t persons .
docker run -d -p 50051:50051 persons
docker tag persons khanglb/persons:latest
docker push khanglb/persons:latest

# Example persons data
insert into public.person (id, first_name, last_name, company_name) values (2, 'Hulk', 'Hogan', 'Mania');
insert into public.person (id, first_name, last_name, company_name) values (3, 'Steve', 'Austin', 'Smakedown');
insert into public.person (id, first_name, last_name, company_name) values (4, 'Roman', 'Reigns', 'The Bloodline');

-----

# running protoc
python -m grpc_tools.protoc -I./ --python_out=./ --grpc_python_out=./ location.proto

# location producer
docker build -t location-producer .
# docker run -d -p 5555:5555 location-producer --for testing
docker tag location-producer khanglb/location-producer:latest
docker push khanglb/location-producer:latest