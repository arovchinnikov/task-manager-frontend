name := tasks_frontend

compose = docker-compose -f ./.dev/docker-compose.yml -p="$(name)"
app = $(compose) exec -T app

app:
	$(compose) exec app bash



install:
	$(compose) up -d
down:
	$(compose) down
destroy:
	$(compose) down -v
	docker image rm "$(name)_app"
