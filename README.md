# RocketDev Here!

## Self introduction

I'm a student from China, interested in `Java`,`C` and `C++` languages. Later I may learn `C#` and `Rust` in my spare time.

And I'm currently playing games including **Genshin Impact**, **Midnight Protocol** and **EXAPUNKS**.  
<img src="https://webstatic.mihoyo.com/upload/static-resource/2021/07/27/7f33b1546290480ea5ea18595cb52cf5_2026295836576284603.jpg" width="25%" title="Klee!">

Now I major in **Information Security**, and play ctf games as a pwner. My writeups are stored [here](https://github.com/RocketMaDev/CTFWriteup).
If that helps you, plz give me a star! :)

Using Arch Linux.

Visit my blog! https://rocketma.dev

## My `.vimrc` Configuration

```bash
curl --proxy http://127.0.0.1:7890 -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

```vim
let mapleader=" "
imap jj <Esc>
noremap K $
noremap Y y$
nnoremap gs :set spell!<CR>
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

set splitbelow
set splitright
set ignorecase
set smartcase
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
set number
set relativenumber
set tildeop
set signcolumn=yes
set mouse=n
if !empty($TMUX)
    set ttymouse=xterm2
else
    set ttymouse=sgr
endif

call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'     " nvim-autopair.lua
Plug 'itchyny/lightline.vim'    " lualine.nvim.lua
Plug 'tpope/vim-commentary'     " nvim builtin
Plug 'tpope/vim-unimpaired'     " nvim builtin
Plug 'tpope/vim-repeat'         " nvim builtin
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'       " nvim-surround.lua
Plug 'preservim/nerdtree', {'on': 'NERDTreeToggle'} " nvim-tree.lua
Plug 'neoclide/coc.nvim', {'branch': 'release'} " nvim-cmp.lua
Plug 'godlygeek/tabular'        " mini.align.lua
Plug 'preservim/vim-markdown'   " render-markdown.nvim.lua
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'skywind3000/asyncrun.vim'
Plug 'kana/vim-textobj-user'    " nvim-various-textobjs.lua
Plug 'kana/vim-textobj-entire'  " nvim-various-textobjs.lua
Plug 'kana/vim-textobj-indent'  " nvim-various-textobjs.lua
Plug 'pocke/vim-textobj-markdown' " nvim-various-textobjs.lua
Plug 'cposture/vim-textobj-argument' " nvim-treesitter-textobjects.lua
Plug 'lilydjwg/fcitx.vim'       " fcitx.nvim.lua
Plug 'easymotion/vim-easymotion' " hop.nvim.lua
call plug#end()

let g:lightline = { 'colorscheme': 'one', }
set laststatus=2
set background=dark
map <C-t> :NERDTreeToggle<CR>
nmap <leader>m <Plug>MarkdownPreviewToggle
let g:vim_markdown_folding_disabled = 1
let g:mkdp_auto_close = 0
let g:mkdp_combine_preview = 1

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-reference)
nmap <silent> gh <Plug>(coc-hover)

inoremap <silent><expr> <Tab> pumvisible() ? coc#_select_confirm() : "\<Tab>"

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
HISTSIZE=3000
SAVEHIST=3000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/Rocket/.zshrc'


source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source ~/.local/share/zsh/sudo.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export LESS="--mouse --wheel-lines=3 -R"

alias vi=vim
alias nv=nvim
alias ll="ls -hls --color=auto"
alias ls="ls --color=auto"
alias la="ls -hlsA --color=auto"
alias l="ls --color=auto"
alias nc=netcat
alias pdb="python -m pdb"
alias ipdb=ipdb3

set zle_bracketed_paste

autoload -Uz bracketed-paste-magic url-quote-magic

zle -N bracketed-paste bracketed-paste-magic
zle -N self-insert url-quote-magic

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
autoload -Uz compinit
compinit
# End of lines added by compinstall
eval "$(zoxide init zsh)"


[[ ! $PATH == *"/home/Rocket/.local/bin"* ]] && export PATH="$PATH:/home/Rocket/.local/bin"
[[ ! $PATH == *"/.local/share/gem"* ]] && export PATH="$PATH:/home/Rocket/.local/share/gem/ruby/3.3.0/bin"

bindkey -s '\ez' 'cd ..\n'

update_patchelf() {
    sudo curl -o /usr/share/zsh/site-functions/_patchelf "https://raw.githubusercontent.com/NixOS/patchelf/refs/heads/master/completions/zsh/_patchelf"
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

load_blog_commands() {
    source ~/blog_commands.zsh
}

PATH="/home/Rocket/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/Rocket/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/Rocket/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/Rocket/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/Rocket/perl5"; export PERL_MM_OPT;
```

## My `.tmux.conf` Configuration

```tmux
# General
setw -g xterm-keys on
set -s escape-time 0
set -sg repeat-time 300
set -s focus-events on
set -g mouse on
set -sg exit-empty on

set -q -g status-utf8 on
setw -q -g utf8 on
set -g history-limit 3000

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
set -g status-right "#{=54:pane_title} #(showtemp)"
set -g status-right-length 64
set -g base-index 1
setw -g pane-base-index 1

## image passthrough
set -g allow-passthrough on
set -ga update-environment TERM
set -ga update-environment TERM_PROGRAM

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
