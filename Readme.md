## Ansible local workstation plan

Run `go run main.go` or `make lib-update` to update all the third party stuff and copy everything to files/  
Then apply everything with `make up-mac` or `make up-ubuntu`

As I don't know how to properly install packages on macos with ansible using brew, some packages are installed with
go.  
Run `go run install.go` or `make install-packages`

# TODO

https://github.com/geerlingguy/ansible-collection-mac

https://github.com/geerlingguy/mac-dev-playbook

https://github.com/neoclide/coc.nvim

https://github.com/dense-analysis/ale

https://github.com/sharkdp/bat

https://github.com/nanotee/nvim-lua-guide


Install and keep up-to-date go global packages staticcheck, revive, vet, gofmt

## zsh-autosuggestions installation
https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md