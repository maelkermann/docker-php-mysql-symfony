build:
	docker-compose build php

bash-app:
	docker-compose exec php bash

bash-db:
	docker-compose exec db bash

drop-db:
	docker-compose exec php sh -c 'php bin/console doctrine:database:drop --force'

create-db:
	docker-compose exec php sh -c 'php bin/console doctrine:database:create'

fixtures:
	docker-compose exec php sh -c 'php bin/console doctrine:fixtures:load -n'

entity:
	docker-compose exec php sh -c 'php bin/console make:entity'

migration:
	docker-compose exec php sh -c 'php bin/console make:migration'

cache:
	docker-compose exec php sh -c 'php bin/console cache:clear'

generate-migration:
	docker-compose exec php sh -c 'php bin/console doctrine:migrations:generate'

db-migrate:
	docker-compose exec php sh -c 'php bin/console doctrine:migrations:migrate'

db-force:
	docker-compose exec php sh -c 'php bin/console doctrine:migrations:migrate -n'

install-assets:
	docker-compose exec php sh -c 'php bin/console assets:install --symlink public'

composer-install:
	docker-compose exec php sh -c 'composer install'

composer-require:
	docker-compose exec php sh -c 'composer require $(name)'

composer-remove:
	docker-compose exec php sh -c 'composer remove $(name)'

git-add:
	git add src/*
	git add assets/*
	git add migrations/*

ps:
	docker-compose ps

down:
	docker-compose down

up:
	docker-compose up -d --remove-orphans

chown:
	sudo chown -R $(USER):$(USER) src
	sudo chown -R $(USER):$(USER) config
	sudo chown -R $(USER):$(USER) migrations
	sudo chown -R $(USER):$(USER) templates
	sudo chown -R $(USER):$(USER) assets
	sudo chown $(USER):$(USER) *
	sudo chown $(USER):$(USER) .*

yarn:
	docker-compose exec php sh -c 'yarn encore dev --watch'

yarn-install:
	docker-compose exec php sh -c 'yarn install'

reinit: drop-db create-db db-force fos-js-routes install-assets
