# Template-rails

- Ruby
  - 3.1.4
- Rails
  - 7.0.7.2


## Usage

### Build

```bash
$ docker-compose build
```

### Starting

```bash
$ docker-compose up
```

### DB setting

```bash
$ docker-compose run -rm web rails db:create db:migrate
```


## Local run rails command

```bash
$ cd web
$ rails db:migrate
```
