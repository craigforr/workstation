# macOS Workstation Configuration

## Preface

Much of the software configured by this setup uses Homebrew for installation. If you are new to Homebrew, read the section "[Homebrew](#Homebrew)' prior to proceeding.

## Setup

### Prerequisites

#### Sudo Password

Make certain you have your sudo password for at least the first run.  Subsequent runs will not require you to be on-hand with your password, provided you have set the `configure_sudoers` variable to `true`.

#### App Store Sign-In

Be certain to log into the Mac App Store prior to utilizing `mas` for App Store software installation or uninstallation.

#### Software Prerequisites

The following commands must be installed and available in your Terminal app:

- `git`
- `brew` (Homebrew)

If Homebrew is not installed, then follow the [Homebrew installation instructions](https://brew.sh/) to do so. Git should already be installed, but if it is not, you can use Homebrew to install it: `brew install git`.

#### Optional

You may wish to set your default shell to Bash, which you can do in Terminal's Settings:

```zsh
# Get the current default shell (Blank line indicates ZSH)
defaults read com.apple.Terminal Shell

# Set the current default shell back to default (/bin/zsh)
defaults write com.apple.Terminal Shell ""

# Set the current default shell to BASH (/bin/bash)
defaults write com.apple.Terminal Shell "/bin/bash"

# Kill the Terminal application
killall Terminal # You must manually start the app again after killing it here
```

### Initialzation

Initial setup of environment for automation.

```bash
# Verify that you are running inside Bash shell
/bin/bash

# Create XDG Base Directory Specification compatible directory structure
mkdir -p ~/.config

# Clone the repository or download the repository as a zip archive and extract
# it to the path shown
git clone https://github.com/craigforr/workstation.git ~/.config/workstation

# Run the initialization script to perform the remainder of the bootstrapping
cd ~/.config/workstation/macos/
bash ./init.sh
```

### Smoke Test

Validate that initialization was completed and Ansible runs successfully.
```bash
# Validate Ansible connects to localhost, test playbook completes successfully
cd ~/.config/workstation/macos/
ansible-playbook test-ansible.yml
```

## Customization

### Overriding Defaults

As Jeff Geerling notes: "Not everyone's development environment and preferred software configuration is the same."

The `default.config.yml` contains my default configuration, which you can override by creating your own copy as `config.yml` and setting your variables to suit your own setup:

```bash
cp default.config.yml config.yml
open config.yml
```

## First Run

```bash
cd ~/.config/workstation/macos/
ansible-playbook main.yml -v
```

## Additional Information

This section is contains optional documentation, resources, and questions and answers specifically applicable to macOS. There is also an "Additional Information" section on the repository [README](../README.md) with information applicable to all operating systems and setups that should be helpful as well.

### Homebrew

Much of the software configured by this setup uses Homebrew for installation. If you are new to Homebrew, the following should be helpful:

> Homebrew
> `brew` is the core command for the Homebrew project.
>
> > The missing package manager for OS X
> >
> > Homebrew installs the stuff you need that Apple didn’t.
>
> Homebrew typically deals with command line software (not graphical GUI applications). Most of the software is distributed under an open source license.
>
> Cask
> `brew cask` is an extension to `brew` that allows management of graphical GUI applications.
>
> > Homebrew Cask extends Homebrew and brings its elegance, simplicity, and speed to OS X applications and large binaries alike.
>
> Cask deals with a mixture of software and licenses.
>
> Cask offers a way to command line manage the installation of graphical GUI applications.

--Source: [Stack Overflow](<https://stackoverflow.com/a/53075995/366727>) (CC BY-SA 4.0)

> [Homebrew-Cask](https://caskroom.github.io/) is an extension to Homebrew to install GUI applications such as Google Chrome or Atom. It started independently but its maintainers now work closely with Homebrew’s core team.
>
> Homebrew calls its package definition files “formulae” (British plural for “formula”). Homebrew-Cask calls them “casks”. A cask, just like a formula, is a file written in a Ruby-based [DSL](https://en.wikipedia.org/wiki/Domain-specific_language) that describes how to install something.
>
> The **Cellar** is where Homebrew installs things. Its default path is `/usr/local/Cellar` (`/opt/homebrew/Cellar` on Apple Silicon). It then add symlinks from standard locations to it.
>
> For example, when you type `brew install git`:
>
> 1. Homebrew installs it under `/usr/local/Cellar/git/<version>/`, with the `git` binary in `/usr/local/Cellar/git/<version>/bin/git`
> 2. It adds a symlink from `/usr/local/bin/git` to that binary
>
> This allows Homebrew to keep track of what’s installed by Homebrew versus software installed by other means.
>
> A **`tap`** is a source of formulae. The default is `homebrew/core` but you can add more of them. The simplest way to create a formula for your own software is to create a GitHub repository called `homebrew-<something>`; put your formula file in it; then type `brew tap <username>/<something>` to add this new source of formulae to your Homebrew installation and so get access to all its formulae.
>
> Some companies have internal Homebrew taps for their own utilities. There are a lot of public taps like [`atlassian/tap`](https://github.com/atlassian/homebrew-tap) for Atlassian software, or [`ska-sa/tap`](https://github.com/ska-sa/homebrew-tap) for radio astronomy. Homebrew itself used to have additional taps like `homebrew/science` but they deprecated them and imported the formulæ in `homebrew/core`.

--Source: [Stack Overflow](<https://stackoverflow.com/a/46423275/366727>) (CC BY-SA 4.0)


<!-- EOF -->
