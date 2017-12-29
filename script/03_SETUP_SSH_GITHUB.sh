#!/usr/bin/env bash
ls -al ~/.ssh
ssh-keygen -t rsa -b 4096 -C "dindinhernawan@yahoo.co.id"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
cd $HOME/.ssh
cat > config << "EOF"
Host github.com
  Hostname ssh.github.com
  Port 443
EOF
ssh -T git@github.com
