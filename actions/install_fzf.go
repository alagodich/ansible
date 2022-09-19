package actions

import (
	"fmt"
	"log"
	"os/exec"
	"strings"
)

// InstallFzf
// Git clone to the local tmp dir and run install
func InstallFzf() error {
	log.Println(strings.Repeat("~", 50))
	log.Println("Installing fzf...")
	path := "tmp/fzf"
	err := CloneRepo("https://github.com/junegunn/fzf.git", path)
	if err != nil {
		return err
	}

	cmd := exec.Command("/bin/sh", "-c", fmt.Sprintf("%s/install --all", path))
	err = cmd.Run()
	if err != nil {
		return err
	}

	log.Println("  Done")
	return nil
}
