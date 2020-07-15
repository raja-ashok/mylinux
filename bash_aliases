# 1. General aliases
alias ll='ls -l'
alias llrt='ls -lrt'
alias llrta='ls -lrta'

alias s='sudo systemctl'

# 2. Kubernetes related aliases
alias k='kubectl'

# 2.1 k3s related aliases
alias k3sconf='sudo cp /etc/rancher/k3s/k3s.yaml ~/.kube/config &&
               sudo chmod 755 ~/.kube/config &&
               sudo chown $USER:$USER ~/.kube/config'
alias k3schmod='sudo chmod 755 /var/lib/rancher/k3s/server &&
                sudo chmod 755 /var/lib/rancher/k3s/agent'
