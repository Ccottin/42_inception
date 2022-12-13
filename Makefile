
all : install up

install :
	sudo hostsed add 127.0.0.1 ccottin.42.fr
	docker compose -f ./srcs/docker-compose.yml build

up :
	docker compose -f ./srcs/docker-compose.yml up

prune :
	docker system prune -a 

start :
	docker compose -f ./srcs/docker-compose.yml start

stop :
	docker compose -f ./srcs/docker-compose.yml stop

clean : stop prune
	sudo hostsed rm 127.0.0.1 ccottin.42.fr
	rm -rf /home/ccottin/data/

reload : clean all

.PHONY : reload install start stop up all clean
