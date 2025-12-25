# nvimm

Neo Vi IMproved Minimal — One file, one plugin.

## Why

I started with kickstart.nvim. It was great, helped me understand how Neovim actually works, how plugins connect, how Lua configs fit together. I learned a lot.<br>
Then I tried LazyVim. Too much abstraction. Felt like using someone else's editor.<br>
So I built my own config. Treesitter, LSP, gruber-darker (the Emacs one), a bunch of plugins I thought I needed.<br>
One day I turned off syntax highlighting. Just to see.<br>
I started reading code differently. Without colors pulling my eyes everywhere, I had to actually focus. Read line by line. Re-read. Think before typing. The screen looked like a book — and I like books.<br>
Kept removing things. Less plugins, less config, less noise. Ended up here: ~70 lines, one plugin for fuzzy finding, pure black background.<br>

Not for everyone. But if you like reading, if you like focus, maybe try it.

## Install
```bash
mkdir -p ~/.local/share/nvim/site/pack/plugins/start
cd ~/.local/share/nvim/site/pack/plugins/start
git clone https://github.com/junegunn/fzf
git clone https://github.com/junegunn/fzf.vim

mkdir -p ~/.config/nvim
curl -o ~/.config/nvim/init.lua https://raw.githubusercontent.com/egosolus/nvimm/refs/heads/master/init.lua
```

Or just copy `init.lua`. It's ~70 lines.

## Keybinds

| Key | Action |
|-----|--------|
| `<leader>ff` | Find files |
| `<leader>b` | Switch buffer |
| `<leader>g` | Grep project |
| `<Esc>` | Clear search |

Leader is `<Space>`.

## Thanks

fzf by junegunn.

And you — for reading this far.
