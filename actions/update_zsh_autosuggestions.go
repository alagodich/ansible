package actions

import (
	"log"
	"strings"
)

func UpdateZshAutosuggestions() error {
	log.Println(strings.Repeat("~", 50))
	log.Println("Updating typewritten zsh autosuggestions...")
	err := CloneRepo("https://github.com/zsh-users/zsh-autosuggestions", "files/zsh_custom/plugins/zsh-autosuggestions")
	log.Println("  Done")
	return err
}
