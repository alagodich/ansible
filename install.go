package main

import (
	"log"
	"strings"
	"workstation-setup/actions"
)

func main() {
	log.SetFlags(0)
	log.Println(strings.Repeat("=", 50))
	log.Println("Installing third party packages instead of ansible")

	err := actions.InstallFzf()
	if err != nil {
		log.Fatalln(err)
	}
}
