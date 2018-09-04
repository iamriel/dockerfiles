help: # This help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

docker-postgres: ## Start the docker-postgres container
	docker-compose up --build -d docker-postgres

docker-rabbitmq: ## Start the docker-rabbitmq container
	docker-compose up --build -d docker-rabbitmq

down:  ## Stop docker containers
	docker-compose down ${args}
