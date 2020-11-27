IMAGE=pullenti-server

build:
	docker build -t ${IMAGE} .

up: build
	docker run -p 8080:8081 --name ${IMAGE} ${IMAGE}

up-compose:
	docker-compose up -d --build
