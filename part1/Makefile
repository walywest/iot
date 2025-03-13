VERSION=24.11
BUILD_DIR=../tooling
BOX_NAME=mynixos
BOX_FILE=$(BUILD_DIR)/nixos-$(VERSION)-virtualbox-iso.virtualbox-x86_64.box

.PHONY: build init run

#NOTE: 1- downloads iso of lightweight nixos 24.11
#		builds the .box file with packer and nix declarations (default options, vagrant user...) and install scripts (creating partitions...)
#		finally exports the .box to be added as a vagrant box
all: build add

build:
	@cd $(BUILD_DIR) && make build

add:
	@vagrant box add $(BOX_NAME) $(BOX_FILE)

run:
	@vagrant up --provision
