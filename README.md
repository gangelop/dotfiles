dotfiles
========

My various dotfiles

These files are licensed under the open-source MIT license.
tl;dr: do whatever you want but don't sue me. :)

## Extra stuff, not in the public repo.

Extra stuff that can or should be out of the public repository, can be
included in a `~/.extra` file, which is sourced from `~/.zshrc`.

example:
```bash
# Stuff that's not in the dotfile repository

# git credentials
GIT_AUTHOR_NAME="George Angelopoulos"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="l4than.d3vers@gmail.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
git config --global user.signingkey "BB60108E"
```

## Thanks to...

* [Mathias Bynens](https://github.com/mathiasbynens/) and his [dotfiles repo](https://github.com/mathiasbynens/dotfiles)
