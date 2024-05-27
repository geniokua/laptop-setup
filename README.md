# laptop-setup: Easy setup for your MacOS dev machine

---

**laptop-setup/mac** is a script to set up a macOS environment for web & mobile development.

The script is idempotent: It can run multiple times on the same machine safely.
It installs, upgrades, or skips packages
based on what is already installed on the machine.

## Requirements

- macOS Sonoma (14.4) or higher

> [!NOTE]
> Both Apple Silicon and Intel are supported

Older versions may work but aren't regularly tested. This script is tested on the most recent and its previous version.

## Install

Download, review, then execute the script:

```bash
curl --remote-name https://raw.githubusercontent.com/tengkera/laptop-setup/master/mac
less mac
bash mac 2>&1 | tee ~/laptop.log
```

Choose the additional packages when the prompts appear:

```text
Do you want to install Web's dependencies? [y|N]
Do you want to install iOS's dependencies? [y|N]
Do you want to install Android's dependencies? [y|N]
```

## What it sets up

### Default

Applications:

- [1Password] the world’s most-loved password manager
- [Brave Browser] as the default browser
- [Keybase] to have encrypted team communication
- [Postman] a collaboration platform for API development
- [Slack] for general team communication
- [VS Code] code editor
- [iTerm2] terminal
- [TablePlus] database GUI

[1password]: https://1password.com/
[brave browser]: https://www.brave.com/
[keybase]: https://keybase.io/
[postman]: https://www.postman.com/
[slack]: https://www.slack.com/
[vs code]: https://code.visualstudio.com/
[iterm2]: https://iterm2.com/
[tableplus]: https://tableplus.com/

Source Code versioning:

- [git] distributed revision control system
- [Git Large File Storage] an open-source Git extension for versioning large files
- [Github CLI] GitHub’s official command line tool
- [Github Desktop] GitHub’s official GUI tool
- [Sourcetree] git client

[git]: https://git-scm.com
[github cli]: https://github.com/cli/cli
[github desktop]: https://desktop.github.com/
[git large file storage]: https://git-lfs.github.com/
[sourcetree]: https://www.sourcetreeapp.com/

Terminal:

- [iTerm2] a replacement for Terminal
- [oh-my-zsh] to spice up your shell
- [spaceship] zsh prompt
- [Zsh] as your shell

[iterm2]: https://www.iterm2.com/
[oh-my-zsh]: https://ohmyz.sh/
[spaceship]: https://spaceship-prompt.sh/
[zsh]: https://www.zsh.org/

Utilities:

- [asdf] to manage all your runtime versions with one tool
- [Bundler] for managing Ruby libraries
- [coreutils] GNU File, Shell, and Text utilities
- [gpg2] GNU Pretty Good Privacy (PGP) package
- [Homebrew] for managing operating system libraries
- [mas CLI] A simple CLI for the Mac App Store.
- [libyaml] YAML Parser

[asdf]: https://asdf-vm.com/
[bundler]: https://bundler.io/
[coreutils]: https://www.gnu.org/software/coreutils
[gpg2]: https://gnupg.org/
[homebrew]: https://brew.sh/
[mas cli]: https://github.com/mas-cli/mas
[libyaml]: https://github.com/yaml/libyaml

### Web

Tools:

- [Docker] for managing project dependencies
- [ImageMagick] for cropping and resizing images
- [Yarn] JavaScript package manager
- [Postgresql] Postgresql RDBMS
- [Redis] key-value store

[docker]: https://www.docker.com/community-edition
[imagemagick]: https://www.imagemagick.org/
[yarn]: https://yarnpkg.com/
[postgresql]: https://www.postgresql.org/
[redis]: https://redis.io/

Command Line Interfaces:

- [AWS CLI] official Amazon AWS command-line interface
- [Heroku CLI] for interacting with the Heroku API
- [Phrase CLI] for interacting with the Phrase API

[heroku cli]: https://toolbelt.heroku.com/
[aws cli]: https://aws.amazon.com/cli/
[phrase cli]: https://phrase.com/cli/

Plugins for asdf:

- [Elixir] functional metaprogramming aware language built on Erlang VM
- [Go] programming language to build simple/reliable/efficient software
- [Nodejs] JavaScript runtime environment
- [Ruby] dynamic, open-source programming language with a focus on simplicity and productivity
- [Python] Python is a high-level, general-purpose programming language used in many areas, particularly in the data field & AI/ML

[elixir]: https://elixir-lang.org/
[go]: https://golang.org
[nodejs]: https://nodejs.org/
[ruby]: https://www.ruby-lang.org/en/
[python]: https://www.python.org/

### iOS

- [Cocoapods] a dependency manager for Cocoa projects
- [Figma] helps teams create, test, and ship better designs from start to finish
- [Proxyman] enables developers to observe and manipulate HTTP/HTTPS requests
- [XCode] iOS IDE

[cocoapods]: https://cocoapods.org/
[figma]: https://www.figma.com/
[proxyman]: https://proxyman.io/
[xcode]: https://developer.apple.com/xcode/

### Android

- [Temurin] OpenJDK from the Adoptium
- [Android Studio] Android IDE
- [Android SDK] Software Development Kit for Android

[temurin]: https://adoptium.net
[android studio]: https://developer.android.com/studio/index.html
[android sdk]: https://developer.android.com/studio/releases/sdk-tools

It should take less than 15 minutes to install (depending on your machine and internet speed).

### M1 incompatible dependecies

- None.

It will omit all these dependencies above while running the script in the M1 machines.

## Customize in `~/.laptop.local`

Your `~/.laptop.local` is run at the end of the Laptop script.
Put your customizations there.
For example:

```sh
#!/bin/sh

cask "dropbox"
cask "firefox"

brew "tree"
```

Write your customizations such that they can be run safely more than once.
See the `mac` script for examples.

Laptop functions such as `fancy_echo`,`brew_install_or_upgrade`,
and `gem_install_or_update` can be used in your `~/.laptop.local`.

See the [wiki](https://github.com/thoughtbot/laptop/wiki)
for more customization examples.

## Debugging

Your last Laptop run will be saved to `~/laptop.log`.
Read through it to see if you can debug the issue yourself.
If not, copy the lines where the script failed into a
[new GitHub Issue](https://github.com/tengkera/laptop-setup/issues/new) for us.
Or, attach the whole log file as an attachment.

## Contributing

Edit the `mac` file.
Document in the `README.md` file.
Follow shell style guidelines by using [ShellCheck] and [Syntastic].

```sh
brew install shellcheck
```

[shellcheck]: https://www.shellcheck.net/about.html
[syntastic]: https://github.com/scrooloose/syntastic

## License

It is free software,
and may be redistributed under the terms specified in the [LICENSE] file.

[license]: LICENSE

## About

This project is maintained by yours truly.

Inspired by the [project] of Thoughtbot & Nimble.

[project]: https://github.com/thoughtbot/laptop
