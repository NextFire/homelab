config:
	cd ansible/ && ansible-playbook --diff -i hosts.cfg playbook.yaml --tags config

compose:
	cd ansible/ && ansible-playbook --diff -i hosts.cfg playbook.yaml --tags compose

up:
	docker compose up -d --build --remove-orphans
	docker image prune -a -f
	docker system prune -f

.PHONY: config compose up
