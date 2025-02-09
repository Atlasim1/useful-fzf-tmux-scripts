(find . -type f | cut -b '3-') | fzf --color=fg:white,hl:blue,fg+:white,bg+:black,hl+:blue,info:gray,prompt:cyan,pointer:cyan,marker:green,spinner:magenta,header:green --tmux 70% \
    --preview='bat -n --color=always --style=numbers {}' --header='Select file to edit' | xargs tmux neww nvim
