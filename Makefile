ansible:
	cd ansible/ && ansible-playbook -i $(host), playbook.yaml

compose:
	podman compose up -d --remove-orphans

.PHONY: ansible compose
