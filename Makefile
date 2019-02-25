.PHONY: clean npm yarn image run

clean:
	-find . -name "node_modules" -type d -prune  -exec rm -rf '{}' +
	-find . -name "yarn.lock" -exec rm -rf '{}' +

npm:
	cd libs/b && npm install --no-package-lock
	cd libs/c && npm install --no-package-lock
	cd myapp && npm install --no-package-lock

yarn:
	cd libs/b && yarn install --no-lockfile
	cd libs/c && yarn install --no-lockfile
	cd myapp && yarn install --no-lockfile

image:
	-docker rm myapp
	-docker rmi myapp
	docker build -t myapp myapp

run:
	docker run --name myapp myapp
