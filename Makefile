all :
	docker compose -f  ./src/docker-compose.yml  up --build
clean:
	docker compose -f ./src/docker-compose.yml down -v
re : clean all
