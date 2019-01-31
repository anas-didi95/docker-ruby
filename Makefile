# Variable

# Docker command
config:
	echo "config..."
	docker-compose config

build:
	echo "build..."
	docker-compose build

up: build
	echo "up..."
	docker-compose up -d

down: 
	echo "down..."
	docker-compose down

reset: down up

# Service-Ruby Command
exec-ruby: up
	echo "exec-ruby..."
	docker-compose exec ruby bash
