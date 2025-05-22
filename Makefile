PREFIX ?= /usr
DESTDIR ?=

ETC_DIR = $(DESTDIR)/etc
HOOKS_DIR = $(ETC_DIR)/initcpio/hooks
INSTALL_DIR = $(ETC_DIR)/initcpio/install
BIN_DIR = $(DESTDIR)$(PREFIX)/bin

all:
	@echo "Use 'make install' to install files."

install:
	install -Dm644 mkinitcpio.aarchd.conf $(ETC_DIR)/mkinitcpio.aarchd.conf
	install -Dm755 halium.initcpio_hook $(HOOKS_DIR)/halium
	install -Dm755 halium.initcpio_install $(INSTALL_DIR)/halium
	install -Dm755 aarchd-mkinitfs $(BIN_DIR)/aarchd-mkinitfs

uninstall:
	rm -f $(ETC_DIR)/mkinitcpio.aarchd.conf
	rm -f $(HOOKS_DIR)/halium
	rm -f $(INSTALL_DIR)/halium
	rm -f $(BIN_DIR)/aarchd-mkinitfs
