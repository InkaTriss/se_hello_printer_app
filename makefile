.PHONY: test

deps:
	pip install -r requirements.txt; \
	pip install -r test_requirements.txt

test:
	PYTHONPATH=. py.test  --verbose -s
test_cov:
	PYTHONPATH=. py.test --verbose -s --cov=. --cov-report xml
test_xunit:
	PYTHONPATH=. py.test -s --cov=. --cov-report xml --junit-xml=test_tesults.xml

test_smoke:
	curl --fail 127.0.0.1:5000

lint:
	flake8 hello_world test


run:
	PYTHONPATH=. FLASK_APP=hello_world flask run

docker_build:
	docker build  -t helo_world_printer .

docker_run: docker_build
		docker run \
			--name hello_world_printer_dev \
			-p 5000:5000 \
			-d hello_world_printer

USERNAME=inkatriss30
TAG=$(USERNAME)/hello_world_printer

docker_push: docker_build
	@docker login --username $(USERNAME) --password $${DOCKER_PASSWORD}; \
	docker tag hello_world_printer $(TAG); \
	docker push $(TAG); \
	docker logout;
