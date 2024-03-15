ansible:
	cd ansible/ && ansible-playbook --diff -i hosts.cfg playbook.yaml

compose:
	docker compose up -d --remove-orphans

.PHONY: ansible compose
