config:
	cd ansible/ && ansible-playbook playbook.yaml --tags config

compose:
	cd ansible/ && ansible-playbook playbook.yaml --tags compose

up:
	docker compose up -d --build --remove-orphans
	docker image prune -f

.PHONY: config compose up
