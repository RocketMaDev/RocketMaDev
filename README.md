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

I'm a student from China, interested in `Java` and `C` languages.

And I'm currently playing games including **EXAPUNKS** and **Genshin Impact**.  
<img src="https://webstatic.mihoyo.com/upload/static-resource/2021/07/27/7f33b1546290480ea5ea18595cb52cf5_2026295836576284603.jpg" width="25%" title="Klee!">

## My `.vimrc` Settings

```bash
curl --proxy http://127.0.0.1:7890 -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

```vimrc
set nu
set expandtab
set softtabstop=4
set tabstop=4
set shiftwidth=4
set laststatus=2
set noshowmode
set background=dark

imap jj <Esc>

call plug#begin()
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
call plug#end()


let g:lightline = { 'colorscheme': 'one', }
nmap <C-n> :NERDTreeToggle<CR>
```
