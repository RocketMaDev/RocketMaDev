# RocketDev Here!

## Self introduction

I'm a student from China, interested in `Java`,`C` and `C++` languages. Later I may learn `C#` and `Rust` in my spare time.

And I'm currently playing games including **Genshin Impact**, **Midnight Protocol** and **EXAPUNKS**.  
<img src="https://webstatic.mihoyo.com/upload/static-resource/2021/07/27/7f33b1546290480ea5ea18595cb52cf5_2026295836576284603.jpg" width="25%" title="Klee!">

Now I major in **Information Security**, and play ctf games as a pwner. My writeups are stored [here](https://github.com/RocketMaDev/CTFWriteup).
If that helps you, plz give me a star! :)

Using Arch Linux.

## My `.vimrc` Configuration

```bash
curl --proxy http://127.0.0.1:7890 -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

```vim
imap jj <Esc>
noremap ' $
nnoremap gs :set spell!<CR>

set wildignorecase
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
set relativenumber
set tildeop
set signcolumn=yes

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
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-user'
call plug#end()

let g:lightline = { 'colorscheme': 'one', }
set laststatus=2
set background=dark
map <C-t> :NERDTreeToggle<CR>
nmap <C-m> <Plug>MarkdownPreviewToggle
let g:vim_markdown_folding_disabled = 1
let g:mkdp_auto_close = 0
let g:mkdp_combine_preview = 1

nmap <silent> gd <Plug>(coc-definition)

inoremap <silent><expr> <Tab> pumvisible() ? coc#_select_confirm() : "\<Tab>"
autocmd FileType python noremap <F8> :AsyncRun -raw -cwd=$(VIM_FILEDIR) python "$(VIM_FILEPATH)" <CR>

autocmd FileType markdown nmap cic :?^```?+1,/^```/-1d<CR>O
autocmd FileType markdown nmap dic :?^```?+1,/^```/-1d<CR>
autocmd FileType markdown nmap <silent> yic :?^```?+1,/^```/-1 "<CR>

autocmd FileType markdown nmap cac :?^```?,/^```/d<CR>i
autocmd FileType markdown nmap dac :?^```?,/^```/d<CR>
autocmd FileType markdown nmap <silent> yac :?^```?,/^```/ "<CR>

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


[[ ! $PATH == *"/home/Rocket/.local/bin"* ]] && export PATH="$PATH:/home/Rocket/.local/bin"

bindkey -s '\ez' 'cd ..\n'

update_patchelf() {
    sudo curl -o /usr/share/zsh/site-functions/_patchelf "https://raw.githubusercontent.com/RocketMaDev/patchelf/master/completions/zsh/_patchelf"
    unfunction _patchelf && autoload -U _patchelf
}

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
set -g status-right "#{=54:pane_title} #(showtemp)C #([ $(cat /sys/class/power_supply/ACAD/online) = 1 ] && echo +)#(cat /sys/class/power_supply/BAT1/capacity)%"
set -g status-right-length 64
set -g base-index 1
setw -g pane-base-index 1

setw -g automatic-rename on
set -g renumber-windows on

set -g set-titles on

set -g display-panes-time 2000
set -g display-time 2000

set -g status-interval 3

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
