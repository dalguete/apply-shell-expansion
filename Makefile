# Let's make all the things
SOURCE:=src/
TARGET:=/

# Basic configs
.DEFAULT_GOAL:=info
all: info install uninstall
.PHONY: all

# Info Target.
info:
	@echo "Just some info!"

# Install Target.
install:
	@echo "Installing files..."
	@cp -rf $(wildcard $(SOURCE)*) $(TARGET)
	@echo "Done!"

# Uninstall Target.
uninstall:
	@echo "Uninstalling files..."
	@find $(TARGET) -type f -or -type l | xargs -I {} rm -fr {}
	@echo "Done!"
