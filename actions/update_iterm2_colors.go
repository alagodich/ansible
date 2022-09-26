package actions

import (
	"fmt"
	"log"
	"os/exec"
	"strings"
)

// UpdateITerm2Colors
// https://github.com/mbadolato/iTerm2-Color-Schemes
// Unfortunately iTerm2 keeps config in binary plist files in ~/Library/Preferences/com.googlecode.iterm2.plist
// Is has an option to export it to xml and keep somewhere else, but then import-scheme.sh will not work
// as it can only import into original, default binary config
// Automating this process is not worth it, better maybe switch to something cross-platform with proper configuration
// Like alacrity
// For now to add more themes, switch to using default config location, import themes, switch back to custom location
func UpdateITerm2Colors() error {
	log.Println(strings.Repeat("~", 50))
	log.Println("Updating iTerm2 colors...")
	path := "tmp/iterm-color-schemes"
	err := CloneRepo("https://github.com/mbadolato/iTerm2-Color-Schemes.git", path)
	if err != nil {
		return err
	}

	colorSchemes := []string{
		"'schemes/SpaceGray Eighties.itermcolors'",
		"'schemes/Gruvbox Dark.itermcolors'",
		"tokyonight",
		"'Monokai Remastered'",
	}

	cmd := exec.Command("/bin/sh", "-c", fmt.Sprintf("%s/tools/import-scheme.sh %s", path, strings.Join(colorSchemes, " ")))
	if err := cmd.Run(); err != nil {
		return err
	}

	// Don't know how to apply it with CLI though
	log.Println("  Done")
	return nil
}
