config:
	cd ansible/ && ansible-playbook playbook.yaml --tags config

compose:
	cd ansible/ && ansible-playbook playbook.yaml --tags compose -v

up:
	docker compose up -d --build --remove-orphans

.PHONY: ansible compose up
