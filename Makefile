ansible:
	cd ansible/ && ansible-playbook --diff -i hosts.yaml playbook.yaml

compose:
	docker compose up -d --remove-orphans

.PHONY: ansible compose
