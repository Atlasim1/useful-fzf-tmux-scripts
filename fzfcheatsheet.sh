selection=`curl -s cht.sh/:list | fzf --preview='curl -s cht.sh/{} | bat -n --color=always' --tmux 90% --color=fg:white,hl:blue,fg+:white,bg+:black,hl+:blue,info:gray,prompt:cyan,pointer:cyan,marker:green,spinner:magenta,header:green --prompt "❯" --header='Cheatsheet Helper'`
curl -s cht.sh/$selection | bat -p --paging=always

