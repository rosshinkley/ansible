#ansible-playbook -vvvv --inventory-file=testing host-server.yaml

#for the chromebook!
ansible-playbook -vvvv  --inventory-file=blag --ask-become-pass dev-box.yaml
#ansible-playbook -vvvv --inventory-file=blag --ask-become-pass hello.yaml
