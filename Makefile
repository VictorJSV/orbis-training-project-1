image:
	docker build -t jjhoncv/jenkins-deploy:0.0.1 docker/jenkins

install:
	docker run -v $(PWD):/app/ -w /app jjhoncv/orbis-training-docker:1.0.0 npm install

release:
	docker run -it -v $(PWD):/app/ -p 1042:1042 -p 35729:35729 -w /app jjhoncv/orbis-training-docker:1.0.0 npm run release