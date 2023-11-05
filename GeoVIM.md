# GeoVIM nvim plugin
- Still need to install npm!
```bash
sudo pacman -Syu
sudo pacman -S npm
# Welcome to Node.js v20.5.1.
```
Able to successfully install typescript, jsonls etc LSPs
Working on getting the nvim json-ls to recognize .geojson
```bash
sudo npm i -g vscode-langservers-extracted
sudo pacman -S jq
# format JSON in vim
:%!jq .
# Send current JSON buffer to jq for formatting
nnoremap("<leader>jq", ":%!jq<CR>")
```

Reddit Article for lspconfig-jsonls
- https://www.reddit.com/r/neovim/comments/14t7d32/how_do_i_enable_an_lsp_for_json_files/

---
### #9-9-2023
- TreeSitter provides the syntax highlighting!
- Let's take a look
```vim 
:set filetype=json
```
This works to get syntax highlight for GeoJSON
 
### nvim filetype docs
- https://neovim.io/doc/user/usr_43.html
```bash
mkdir -p ~/.config/nvim/ftplugin
:filetype plugin on
```

### Above did NOT work!
#geovim this is the correct method!
```lua
vim.filetype.add({
  extension = {
    tex = 'tex',
  }
})
```
Adding Telescope media files`

```bash
sudo pacman -Syu  
# worked after updated pacman mirrors`
sudo pacman -S chafa
```
This is the site!
- Needed to change the find command in the media_files.lua config under .local...
- https://github.com/nvim-telescope/telescope-media-files.nvim/issues/11
- changed to "rg" for ripgrep

#### nextSteps
1. work on getting basic plugin config running
    - Finally this is working! 
2. Have plugin add geojson filetype & jq commands
3. Install jq if needed, add shortcuts 
4. work on installing python CLI utility to open geojson folium map preview.

---
### 9-21-2023
- Installed MarkdownPreview for fun
- might be nice to have with GeoVim

```bash
nvim --cmd "set rtp+=./"
# this doesn't work, investigating runtime path issues
# volume mixer for youtube video
sudo pacman -S alsa-utils
# Finally got it!  -c run after other files init!
nvim -c "set rtp+=./"
# also was not creating luaPlugin dir inside of the project
npm install -g geojsonio-cli
# testing sending geojson to io with geojson CLI
```

---
### 9-26-2023
https://github.com/nanotee/nvim-lua-guide
https://neovim.io/doc/user/lua-guide.html
