.PHONY: up
## Apply playbook
up:
	@sudo ansible-pull -U https://github.com/alagodich/ansible.git


.PHONY: dump-dconf
## Dump dconf to view
dump-dconf:
	@dconf dump / | view -
