## Ansible local workstation plan




# Ubuntu initial pre-ansible setup
Full install for drivers
   
ssh-keygen -t ed25519 -C "old-mac"
ls ~/.ssh/
sudo apt-get install git

git config --global user.email "signinuplad@gmail.com"
git config --global user.name "Anatolii Lagodich"

cat ~/.gitconfig

mkdir development
cd development

# add keys
git clone git@github.com:alagodich/ansible.git
cd ansible
sudo apt-get install ansible
make up-ubuntu

