
all : install

install :
	docker-compose build
	docker-compose run --no-deps --rm application composer install

start :
	docker-compose up -d #no deps

stop :
	docker-compose down


.PHONY : install start stop
