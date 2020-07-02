SHELL=/bin/bash
.PHONY: up down run

up:
	docker-compose up -d --build

down:
	docker-compose down

run:
	docker-compose exec app /bin/bash -c "printenv | grep """TEST""""
