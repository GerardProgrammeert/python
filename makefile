project=python

install:
	. .venv/bin/activate
	pip install -r requirements.txt

in:
	docker exec --user=php -it "$(project)_alpine" /bin/sh

root-in:
	 docker exec -it --user=root "$(project)_alpine" sh

rebuild:
	@docker-compose down
	@docker-compose build
	@docker-compose up -d