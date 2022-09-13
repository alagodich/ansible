.PHONY: up-mac
## Apply mac playbook
up-mac:
	@sudo ansible-pull -U https://github.com/alagodich/ansible.git mac.yaml

.PHONY: up-ubuntu
## Apply playbook
up-ubuntu:
	@sudo ansible-pull -U https://github.com/alagodich/ansible.git ubuntu.yaml


.PHONY: dump-dconf
## Dump dconf to view
dump-dconf:
	@dconf dump / | view -
