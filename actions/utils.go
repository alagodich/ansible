package actions

import (
	"github.com/go-git/go-git/v5"
	"io"
	"log"
	"os"
)

func CloneRepo(url string, path string) error {
	_, err := git.PlainClone(path, false, &git.CloneOptions{
		URL: url,
	})

	if err == git.ErrRepositoryAlreadyExists {
		log.Println("  Repo exists")
		r, err := git.PlainOpen(path)
		if err != nil {
			return err
		}
		w, err := r.Worktree()
		if err != nil {
			return err
		}
		err = w.Pull(&git.PullOptions{
			RemoteName: "origin",
		})
		if err != nil && err != git.NoErrAlreadyUpToDate {
			log.Println("  Origin pulled")
			return err
		}
	} else {
		log.Println("  Another problem with clone")
		if err != nil {
			return err
		}
	}
	return nil
}

func CopyFile(src string, dest string) error {
	from, err := os.Open(src)
	if err != nil {
		return err
	}
	defer from.Close()

	to, err := os.Create(dest)
	if err != nil {
		return err
	}
	defer to.Close()

	_, err = io.Copy(to, from)
	if err != nil {
		return err
	}
	return to.Close()
}
