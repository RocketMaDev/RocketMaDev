<!--
**RocketMaDev/RocketMaDev** is a āØ _special_ āØ repository because its `README.md` (this file) appears on your GitHub profile.

Here are some ideas to get you started:

- š­ Iām currently working on ...
- š± Iām currently learning ...
- šÆ Iām looking to collaborate on ...
- š¤ Iām looking for help with ...
- š¬ Ask me about ...
- š« How to reach me: ...
- š Pronouns: ...
- ā” Fun fact: ...
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
nmap <C-N> :NERDTreeToggle<CR>
```
