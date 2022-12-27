SHELL := /bin/bash
-include config.bash

validate-config:
		[[ -f config.bash ]] || { echo "config.bash does not exist"; exit 1; }
		[[ -n ${GITLAB_URL} ]] || { echo "GITLAB_URL isn't set"; exit 1; } && \
		[[ -n ${GITLAB_WEB_PORT} ]] || { echo "GITLAB_WEB_PORT isn't set"; exit 1; } && \
		[[ -n ${GITLAB_SSH_PORT} ]] || { echo "GITLAB_SSH_PORT isn't set"; exit 1; }
# Management
up: validate-config
		source config.bash && \
		docker-compose up -d
restart:
		docker-compose restart
down:
		docker-compose down
destroy:
		docker-compose down -v
		rm $(CURDIR)/gitlab-data -rf
# Troubleshooting 
logs:
		docker-compose logs -f
ps:
		docker-compose ps
shell:
		docker-compose exec web bash

.PHONY: validate-config up restart down destroy logs ps shell 