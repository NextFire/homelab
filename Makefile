ansible:
	cd ansible/ && ansible-playbook --diff -i hosts.cfg playbook.yaml

compose:
	docker compose up -d --build --remove-orphans

.PHONY: ansible compose
