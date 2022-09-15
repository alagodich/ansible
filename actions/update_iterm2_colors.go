package actions

import (
	"fmt"
	"log"
	"os/exec"
	"strings"
)

// UpdateITerm2Colors
// https://github.com/mbadolato/iTerm2-Color-Schemes
func UpdateITerm2Colors() error {
	log.Println(strings.Repeat("~", 50))
	log.Println("Updating iTerm2 colors...")
	path := "tmp/iterm-color-schemes"
	err := CloneRepo("https://github.com/mbadolato/iTerm2-Color-Schemes.git", path)
	if err != nil {
		return err
	}

	cmd := exec.Command("/bin/sh", "-c", fmt.Sprintf("%s/tools/import-scheme.sh 'schemes/SpaceGray Eighties.itermcolors'", path))
	err = cmd.Run()
	if err != nil {
		return err
	}

	cmd = exec.Command("/bin/sh", "-c", fmt.Sprintf("%s/tools/import-scheme.sh 'schemes/Gruvbox Dark.itermcolors'", path))
	err = cmd.Run()
	if err != nil {
		return err
	}
	// Don't know how to apply it with CLI though
	log.Println("  Done")
	return nil
}
