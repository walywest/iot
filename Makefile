BUILD_DIR=tooling
BOX_NAME=any_name
BOX_FILE=$(BUILD_DIR)/nixos-24.05-virtualbox-iso.virtualbox-x86_64.box

.PHONY: build init run

all: build add

build:
	@cd $(BUILD_DIR) && make build

add:
	@vagrant box add $(BOX_NAME) $(BOX_FILE)

init:
	@vagrant init $(BOX_NAME) || true

run: init
	@vagrant up --provision
	@echo -e "\033[0;32mYou can now use 'vagrant ssh' to connect to our nixBox\033[0m"
