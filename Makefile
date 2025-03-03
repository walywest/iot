BUILD_DIR=tooling
BOX_NAME=any_name
BOX_FILE=$(BUILD_DIR)/nixos-24.05-virtualbox-x86_64.box

.PHONY: build init run

build:


# #NOTE:  Building the box: /BUILD_DIR folder would not be needed after building the .box file, that is all we need it for, IoT pdf says "The evaluation process will happen on the computer of the evaluated
# group." so will simply just build the .box before starting corrections, then we would only need dimple vagrant up --> vagrant ssh.
	@cd $(BUILD_DIR) && make build
#NOTE: Add the box to your vagrant (locally because we already built the .box using make build inside BUILD_DIR)
	@vagrant box add $(BOX_NAME) $(BOX_FILE)

init:
	@vagrant init $(BOX_NAME) || true

run: init
	@vagrant up
	@echo -e "\033[0;32mYou can now use 'vagrant ssh' to connect to our nixBox\033[0m"
