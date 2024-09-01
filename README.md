VSCode config, along with neovim support

- code snippets (language-wise) in `snippets/`
- vscode keybindings in `keybindings.json`
- vscode extensions list in `extensions.txt`
- vim keybindings in `nvim/keys_general.vim`

## Setup

### neovim

#### linux

```bash
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt install neovim
```

#### macos

```bash
brew install neovim
```

### Config Path

Clone the repository to the default vscode config folder

- **Code:** `~/.config/VSCode/User` for `linux`, and
  `~/Library/Application\ Support/Code/User` for `macos`
- **Codium:** `~/.config/VSCodium/User` for `linux`, and
  `~/Library/Application\ Support/Codium/User` for `macos`

```bash
git clone https://hariprasadr1hp/vscode_nvim_config
```

### Extensions

Within the application, launch "VS Code Quick Open" (`Ctrl+P`) and run
`ext install <ext>`

Or from the terminal,

- vscode

```bash
cat extensions.txt | xargs -n 1 r !code --list-extensions --show-versions
```
