# VagrantBox Setup

 to setup ubuntu on VagrantBox:
 
                  sudo vi bootstrap.sh
 
 Save the file and exit. Next, edit the Vagrantfile and add the provisioning line.
 
 # Kuberenetes Setup
 
 For namespaces follow:
 
                  kubectl create namespace<namespace_name>
                  kubectl get namespaces
                  kubectl config view
                  kubectl config current-context
                  kubectl config set-context dev --namespace=<namespace_name> \
                  --cluster=default \
                  --user=default
 To view the new contexts:
            
                  kubectl config view
                  
Let's switch to operate in the new namespace.

                  kubectl config use-context <namespace_name>
                  
You can verify your current context by doing the following:

                  kubectl config current-context
                  
                  
#  Ansible Setup
Provide the host ip_address in the /et/ansible/host and also provide python_ansible_interpreter:

                  sudo nano /etc/ansible/hosts
                  [nodes]
                  slave1 ansible_ssh_host=<ip_addr_of_node_machine>
                  
                  [nodes:vars]
                  ansible_python_interpreter=/usr/bin/python3
                  
refer the blogs:https://www.techrepublic.com/article/how-to-install-ansible-on-ubuntu-server-18-04/
               
                  
