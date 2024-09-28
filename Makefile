react_version := 1.3
go_version := 1.3

build:
	docker build -t sagarchhabra02/docker-gs-ping:$(go_version) .
	docker build -t sagarchhabra02/react-ui:$(react_version) .
	
push: 
	docker push sagarchhabra02/docker-gs-ping:$(go_version)
	docker push sagarchhabra02/react-ui:$(react_version)

update: 
	kubectl apply -f ./manifests

all: build push update