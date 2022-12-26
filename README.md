<!--
**RocketMaDev/RocketMaDev** is a ✨ _special_ ✨ repository because its `README.md` (this file) appears on your GitHub profile.

Here are some ideas to get you started:

- 🔭 I’m currently working on ...
- 🌱 I’m currently learning ...
- 👯 I’m looking to collaborate on ...
- 🤔 I’m looking for help with ...
- 💬 Ask me about ...
- 📫 How to reach me: ...
- 😄 Pronouns: ...
- ⚡ Fun fact: ...
-->

# RocketDev Here!

## Self introduction

I'm a student from China, interested in `Java`,`C` and `C++` languages. Later I may learn `C#` and `Rust` in my spare time.

And I'm currently playing games including **Genshin Impact** and**EXAPUNKS** .  
<img src="https://webstatic.mihoyo.com/upload/static-resource/2021/07/27/7f33b1546290480ea5ea18595cb52cf5_2026295836576284603.jpg" width="25%" title="Klee!">

## My `.vimrc` Settings

```bash
curl --proxy http://127.0.0.1:7890 -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

```vimrc
imap jj <Esc>
set nu
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set pythonthreedll=/c/Users/ma201/AppData/Local/Programs/Python/Python310/python310.dll
set noshowmode
set tags+=/d/TDM-GCC/tags

call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree', {'on': 'NERDTreeToggle'}
call plug#end()

let g:lightline = { 'colorscheme': 'one', }
set background=dark
map <C-n> :NERDTreeToggle<CR>
```

## An alternative `ln -s` in Git Bash

I've found that using `ln -s` on Git Bash just copy it, not creating a symbolic link.
Knowing that there is a dos tool named `mklink` bundled with cmd, I wrote a C file to
implement the operation. It is in this repo, named `mklink.c`.

