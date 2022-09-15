package actions

import (
	"log"
	"os/exec"
	"strings"
)

// UpdateTypewritten
// Clones repo to tmp dir, pulls if already exists and copies the latest theme to files/
func UpdateTypewritten() error {
	log.Println(strings.Repeat("~", 50))
	log.Println("Updating typewritten zsh theme...")
	path := "tmp/typewritten"
	err := CloneRepo("https://github.com/reobin/typewritten.git", path)
	if err != nil {
		return err
	}

	log.Println("  Copying files...")
	cmd := exec.Command("cp", "-r", "tmp/typewritten/lib", "files/zsh_custom/themes/")
	err = cmd.Run()
	if err != nil {
		return err
	}
	cmd = exec.Command("cp", "tmp/typewritten/typewritten.zsh", "files/zsh_custom/themes/typewritten.zsh-theme")
	err = cmd.Run()
	if err != nil {
		return err
	}
	cmd = exec.Command("cp", "tmp/typewritten/async.zsh", "files/zsh_custom/themes/async.zsh")
	err = cmd.Run()
	if err != nil {
		return err
	}

	log.Println("  Done")
	return nil
}
