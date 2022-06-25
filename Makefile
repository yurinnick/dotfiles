FEDORA_VERSION = 36
DOCKER_CMD = podman
GITHUB_USERNAME = yurinnick

test:
	$(DOCKER_CMD) run -t fedora:$(FEDORA_VERSION) \
		sh -c "$$(curl -fsLS chezmoi.io/get)" -- init --apply $(GITHUB_USERNAME)
