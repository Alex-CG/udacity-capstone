install:
	# This should be run from inside a virtualenv
	wget -O ./hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
	chmod +x ./hadolint

lint:
	# See local hadolint install instructions:   https://github.com/hadolint/hadolint
	# This is linter for Dockerfiles
	./hadolint Dockerfile
