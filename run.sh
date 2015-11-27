#!/usr/bin/env bash
echo ">>> Prepare installation"
# Only install if not exists
if [ ! -x /usr/bin/ansible ]; then
  echo ">>> Installing ansible";
  sudo apt-add-repository ppa:ansible/ansible -y
  sudo apt-get update
  sudo apt-get install ansible -y
fi
echo ">>> Starting installation"
ansible-playbook main.yml -i inventory -s -K
echo ">>> Installation complete"
