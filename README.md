<img width="100%" src="https://capsule-render.vercel.app/api?type=waving&section=header&color=0284C7&fontColor=F0F9FF&height=256&text=Kickstart.zsh&desc=A%20launch%20point%20for%20your%20personal%20Zsh%20configuration&descAlignY=66"/>

## 💡 About

**`kickstart.zsh`** is meant to be used as a starting point for a user's own configuration. Remove the things you don't use and add what you miss.

### ✨ Features

- Small single-file config.
- Fully documented.
- Manage plugins using [Zinit](https://github.com/zdharma-continuum/zinit).
- [Fish](https://fishshell.com) like interactive features:
  - [Auto Cd](https://zsh.sourceforge.io/Intro/intro_16.html).
  - [Syntax highlighting](https://github.com/zdharma/fast-syntax-highlighting).
  - [Auto suggestions](https://github.com/zsh-users/zsh-autosuggestions).
  - [Advanced completion](https://github.com/marlonrichert/zsh-autocomplete).
- Plus it come with [Starship](https://starship.rs) prompt!

## 🚀 Setup

### 🧾 Dependencies

- [`zsh`](https://www.zsh.org)
- [`curl`](https://curl.se)
- [`git`](https://git-scm.com)
- [`coreutils`](https://www.gnu.org/software/coreutils) _(optional)_
- [`trash-cli`](https://github.com/andreafrancia/trash-cli) _(optional)_
- [`7z`](https://github.com/jinfeihan57/p7zip) _(optional)_

### 📥 Installation

Just download the file to `~/.zshrc`:

```sh
curl https://raw.githubusercontent.com/NNBnh/kickstart.zsh/main/.zshrc > ~/.zshrc
```

> **Warning** The command above will delete existen `~/.zshrc` permanently.

## 💌 Credits

Special thanks to:
- [**Oh My Zsh**](https://ohmyz.sh) by [it's community](https://github.com/ohmyzsh/ohmyzsh/graphs/contributors)
- [**`kickstart.nvim`**](https://github.com/nvim-lua/kickstart.nvim) by [Neovim Lua](https://github.com/nvim-lua)

<a href="https://nnb.codeberg.page">
  <img
    width="100%"
    src="https://capsule-render.vercel.app/api?type=waving&section=footer&color=0284C7&fontColor=F0F9FF&height=128&desc=Made%20with%20%26lt;3%20by%20NNB&descAlignY=80"
    alt="Made with <3 by NNB"
  />
</a>
