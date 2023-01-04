all: 
	sudo chmod 666 /var/run/docker.sock
	bash ./srcs/requirements/tools/create_dr.sh
	docker compose -f  ./srcs/docker-compose.yml  up --build
clean:
	docker compose -f ./srcs/docker-compose.yml down
re : clean all
