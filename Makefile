.PHONY: help

help: ## Show this help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {sub("\\\\n",sprintf("\n%22c"," "), $$2);printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

dev: ## Start containers (local development)
	docker-compose up --force-recreate --build

start: ## Start containers (production)
	docker-compose up --force-recreate --remove-orphans --detach

restart: ## Restart containers
	docker-compose restart

stop: ## Stop containers
	docker-compose stop

logs: ## Print logs (last 1000 lines)
	docker-compose logs --tail 1000
