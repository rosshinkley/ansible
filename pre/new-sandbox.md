#steps on a new sandbox
1. set the network to bridged
1. install ssh server: `sudo apt-get install openssh-server`
1. restart ssh: `sudo service ssh restart`
1. unlock root: 

    ```bash
    sudo passwd root
    sudo passwd -u root
    ```
1. go to `/etc/ssh/sshd_config`, comment out `PermitRootLogin without-password` and add `PermitRootLogin yes`
1. restart ssh: `sudo service ssh restart`
1. copy the ssh id key using `ssh-id.sh`
