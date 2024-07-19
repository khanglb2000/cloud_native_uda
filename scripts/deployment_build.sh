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
