package main

import (
	"log"
	"strings"
	"workstation-setup/actions"
)

func main() {
	log.SetFlags(0)
	log.Println(strings.Repeat("=", 50))
	log.Println("Updating modules")

	err := actions.UpdateTypewritten()
	if err != nil {
		log.Fatalln(err)
	}
	err = actions.UpdateZshAutosuggestions()
	if err != nil {
		log.Fatalln(err)
	}
}
