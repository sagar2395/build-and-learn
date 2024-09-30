react_version := v2.1
go_version := v2.1

build:
	DOCKER_BUILDKIT=1 docker build -t sagarchhabra02/docker-gs-ping:$(go_version) .
	DOCKER_BUILDKIT=1 docker build -t sagarchhabra02/react-ui:$(react_version) ./react-ui/
	
push: 
	docker push sagarchhabra02/docker-gs-ping:$(go_version)
	docker push sagarchhabra02/react-ui:$(react_version)

update: 
	kubectl apply -f ./manifests

all: build push update