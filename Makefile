.PHONY: up-mac-2023
## Apply 2023 mac playbook
up-mac-2023:
	@sudo /Users/alagodich/Library/Python/3.11/bin/ansible-pull -U https://github.com/alagodich/ansible.git mac.yml

.PHONY: up-mac
## Apply mac playbook
up-mac:
	@sudo ansible-pull -U https://github.com/alagodich/ansible.git mac.yml

.PHONY: up-mac-local
## Provision mac locally
up-mac-local:
	@sudo ansible-playbook mac.yml --ask-become-pass

.PHONY: up-ubuntu
## Apply playbook
up-ubuntu:
	@sudo ansible-pull -U https://github.com/alagodich/ansible.git ubuntu.yml

.PHONY: dump-dconf
## Dump dconf to view, Ubuntu only
dump-dconf:
	@dconf dump / | view -

.PHONY: lib-update
## Run updater
lib-update:
	@go run main.go
