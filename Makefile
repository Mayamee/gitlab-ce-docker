prepare-config:
		cp -v config.example.bash config.bash
load-config:
		source config.bash
up:
		docker-compose up -d
restart:
		docker-compose restart
destroy:
		docker-compose down