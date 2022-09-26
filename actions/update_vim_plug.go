package actions

import (
	"log"
	"os/exec"
	"strings"
)

// UpdateVimPlug
// Copy the latest version of https://github.com/junegunn/vim-plug
func UpdateVimPlug() error {
	log.Println(strings.Repeat("~", 50))
	log.Println("Updating vim plug...")
	cmd := exec.Command(
		"curl",
		"-o",
		"files/vim/autoload/plug.vim",
		"https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim",
	)
	err := cmd.Run()
	cmd = exec.Command(
		"curl",
		"-o",
		"files/nvim_local_share/site/autoload/plug.vim",
		"https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim",
	)
	err = cmd.Run()

	log.Println("  Done")
	return err
}
