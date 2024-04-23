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

And I'm currently playing games including **Genshin Impact**, **Midnight Protocol** and **EXAPUNKS**.  
<img src="https://webstatic.mihoyo.com/upload/static-resource/2021/07/27/7f33b1546290480ea5ea18595cb52cf5_2026295836576284603.jpg" width="25%" title="Klee!">

Now I major in **Information Security**, and play ctf games as a pwner.

Using Arch Linux.

## My `.vimrc` Configuration

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
set noshowmode
set hidden
set wildmenu
set wildmode=longest:full,full
set showcmd
set incsearch

call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'skywind3000/asyncrun.vim'
call plug#end()

let g:lightline = { 'colorscheme': 'one', }
set laststatus=2
set background=dark
map <C-t> :NERDTreeToggle<CR>
nmap <C-m> <Plug>MarkdownPreviewToggle
let g:vim_markdown_folding_disabled = 1
let g:mkdp_auto_close = 0
let g:mkdp_combine_preview = 1

set signcolumn=yes
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

inoremap <silent><expr> <Tab> pumvisible() ? coc#_select_confirm() : "\<Tab>"
autocmd FileType c,cpp noremap <F6> :AsyncRun gcc -Wextra -Wall "$(VIM_FILEPATH)" -o "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <CR>
autocmd FileType c,cpp noremap <F8> :AsyncRun "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <CR>
autocmd FileType python noremap <F8> :AsyncRun -raw -cwd=$(VIM_FILEDIR) python "$(VIM_FILEPATH)" <CR>

autocmd BufWinLeave ?* mkview
autocmd BufWinEnter ?* silent loadview
```

## My `.zshrc` Configuration

```zsh
fastfetch --data-raw "$(fortune | cowsay -W 30 | lolcat -f)"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
source ~/.bash_profile
source /etc/profile

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/Rocket/.zshrc'


source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/sudo.zsh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export http_proxy=http://127.0.0.1:20172
export https_proxy=http://127.0.0.1:20172

alias vi=vim
alias ll="ls -hls --color=auto"
alias ls="ls --color=auto"
alias nc=ncat

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
autoload -Uz compinit
compinit
# End of lines added by compinstall


# Created by `pipx` on 2024-02-23 11:49:32
export PATH="$PATH:/home/Rocket/.local/bin"

bindkey -s '\ez' 'cd ..\n'

cheat() {
    curl "cheat.sh/$1"
}

0x() {
    echo $((16#$1))
}

0o() {
    echo $((8#$1))
}

0b() {
    echo $((2#$1))
}

p16() {
    echo $(([#16] $1))
}

p8() {
    echo $(([#8] $1))
}

p2() {
    echo $(([#2] $1))
}
```

## My `.tmux.conf` Configuration

```tmux
# General
setw -g xterm-keys on
set -s escape-time 0
set -sg repeat-time 300
set -s focus-events on
set-option -g mouse on
set -sg exit-empty on

set -q -g status-utf8 on
setw -q -g utf8 on
set -g history-limit 1000

bind c new-window -c "#{pane_current_path}"

# Prefix
unbind C-b
set -g prefix 'C-s'

# Display
set-option -sa terminal-overrides ",xterm*:Tc"
set -g status-style "bg=#32353b,fg=#08b472"
set -g pane-active-border-style "fg=#08b472"
set -g pane-border-style "fg=#32353b"
setw -g window-status-current-style "fg=black,bg=#08b472"
set -g status-right "#{=20:pane_title} #([ $(cat /sys/class/power_supply/ACAD/online) = 1 ] && echo +)#(cat /sys/class/power_supply/BAT1/capacity)%"
set -g base-index 1
setw -g pane-base-index 1

setw -g automatic-rename on
set -g renumber-windows on

set -g set-titles on

set -g display-panes-time 2000
set -g display-time 2000

set -g status-interval 1

set -g default-terminal "tmux-256color"
# Window Management
bind -n M-o new-window -c "#{pane_current_path}"
bind -n M-O break-pane
bind -n M-q kill-pane

# Window Navigation
unbind n
unbind p
bind -n M-Right next-window
bind -n M-Left previous-window

bind -n M-h select-pane -L
bind -n M-j select-pane -D
bind -n M-k select-pane -U
bind -n M-l select-pane -R
bind > swap-pane -D
bind < swap-pane -U
bind | swap-pane

bind v split-window -h -c "#{pane_current_path}"
bind s split-window -v -c "#{pane_current_path}"

set -g mode-keys vi

bind -n M-v copy-mode
```

## An alternative `ln -s` in Git Bash

~~I've found that using `ln -s` on Git Bash just copy it, not creating a symbolic link.
Knowing that there is a dos tool named `mklink` bundled with cmd, I wrote a C file to
implement the operation. It is in this repo, named `mklink.c`.~~

Set variable export `MSYS=winsymlinks:nativestrict` to enable `ln`.
