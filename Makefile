ansible: ansible/ignition.json
	cd ansible/ && ansible-playbook -i $(host), playbook.yaml

ansible/ignition.json: ansible/ignition.yaml
	butane -o $@ $<

.PHONY: ansible
