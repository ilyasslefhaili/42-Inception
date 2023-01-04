all: 
	sudo chmod 666 /var/run/docker.sock
	bash ./src/tools/create_dr.sh
	docker compose -f  ./src/docker-compose.yml  up --build
clean:
	docker compose -f ./src/docker-compose.yml down
re : clean all
