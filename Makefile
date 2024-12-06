API_IMAGE_NAME=wikiapi
WEB_IMAGE_NAME=wikiweb
IMAGE_VERSION=v1

compile_api:
	mvn clean package -Dmaven.test.skip=true

compile_web:
	cd web && npm install && npm run build-prod

build_api: compile_api
	docker build -t ${API_IMAGE_NAME}:${IMAGE_VERSION} -f ./doc/deploy/api/Dockerfile .

build_web:
	docker build -t ${WEB_IMAGE_NAME}:${IMAGE_VERSION} -f ./doc/deploy/web/Dockerfile .

build: build_api build_web

tag:
	docker tag ${API_IMAGE_NAME}:${IMAGE_VERSION} ccr.ccs.tencentyun.com/lsm1998/${API_IMAGE_NAME}:${IMAGE_VERSION}
	docker tag ${WEB_IMAGE_NAME}:${IMAGE_VERSION} ccr.ccs.tencentyun.com/lsm1998/${WEB_IMAGE_NAME}:${IMAGE_VERSION}

push:
	docker push ccr.ccs.tencentyun.com/lsm1998/${API_IMAGE_NAME}:${IMAGE_VERSION}
	docker push ccr.ccs.tencentyun.com/lsm1998/${WEB_IMAGE_NAME}:${IMAGE_VERSION}

run_web:
	docker run -p 80:80 -d ${WEB_IMAGE_NAME}:${IMAGE_VERSION}

run_api:
	docker run -p 8080:8080 -d ${API_IMAGE_NAME}:${IMAGE_VERSION}

run: run_web run_api

clean:
	docker rmi -f ${WEB_IMAGE_NAME}:${IMAGE_VERSION}
	docker rmi -f ${API_IMAGE_NAME}:${IMAGE_VERSION}
