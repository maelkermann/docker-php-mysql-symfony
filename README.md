# Docker PHP Mysql Symfony

## Installation

```
git pull git@github.com:maelkermann/docker-php-mysql-symfony.git
make build
make up
make composer-install
```

## Urls
- site : http://localhost:20000
- phpmyadmin : http://localhost:20001
- mail : http://localhost:20002


## Environment variables for database

```
DATABASE_URL="mysql://user:password@db/database"
```

## Install assets dependencies

```
make yarn-install
```

## Launch yarn in dev mode

```
make yarn
```




