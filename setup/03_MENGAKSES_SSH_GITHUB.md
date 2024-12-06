```
ls -al ~/.ssh
ssh-keygen -t ecdsa -b 521 -C "dindin_hernawan@yahoo.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ecdsa
cd $HOME/.ssh
cat > config << "EOF"
Host github.com
  Hostname ssh.github.com
  Port 443
EOF
ssh -T git@github.com
```
