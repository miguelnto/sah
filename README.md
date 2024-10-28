# sah - Simple AUR Helper

Sah is a bash script that aids with searching, installing, and updating AUR packages. It is **not** a package manager, it's just an AUR helper, like yay. 

AUR Packages are user produced content, so use the provided files at your own risk. Sah does not allow running as root.

It follows the package build process described [here](https://wiki.archlinux.org/index.php/Arch_User_Repository#Installing_packages) and [here](https://wiki.archlinux.org/index.php/Makepkg).

By default, the build directory for packages installed with `sah` is located at `$HOME/.cache/sah/builds`.

## Features

- Minimal requirements.
- Fast update checking.
- Search for packages matching a query.
- Optionally view and confirm the PKGBUILD for each package.
- Handles dependency chains including other AUR packages.
- Import and locally trust PGP keys required for signed AUR packages.

## Requirements

- bash shell
- curl
- su  
- git
- sudo or doas

`git` and `sudo/doas` are optional, but recommended.

## Installation

You can simply install the script by running: *(as root, if needed)*

```
make install
```

To uninstall, run: *(as root, if needed)*

```
make uninstall
```

## Usage

Operations:

- `-i` - Install packages.
- `-u` - Update packages.
- `-s` - Search for packages.
- `-v` - Prints the current version.

Options:

- `-a` - Only perform operations on AUR packages.
- `-n` - Skip viewing PKGBUILD files when installing from the AUR.
- `-N` - Skip confirmation prompts, also passed to pacman and makepkg.

Examples:

- Install packages from the AUR and official repos in one command:

```
sah -i pfetch git
```

- Update AUR packages only and skip confirm dialogs: 

```
sah -uaN
```

## TODO

- Fix some stuff that shellcheck is complaining about

## Credits

Sah is a fork of [baph](https://bitbucket.org/natemaia/baph). As that didn't seem hugely maintained and the quality of the code could be improved, I decided to create this program. 

