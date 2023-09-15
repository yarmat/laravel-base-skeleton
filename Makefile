# Executables (local)
DOCKER_COMP = ./vendor/bin/sail

# Executables
COMPOSER = $(DOCKER_COMP) composer

up:
	$(DOCKER_COMP) up -d --remove-orphans

down:
	$(DOCKER_COMP) stop

rebuild:
	$(DOCKER_COMP) build --no-cache

remove-volumes:
	$(DOCKER_COMP) down -v

sh:
	$(DOCKER_COMP) shell

sh-root:
	$(DOCKER_COMP) root-shell

code-style:
	@$(COMPOSER) cs-check
	@$(COMPOSER) phpstan
