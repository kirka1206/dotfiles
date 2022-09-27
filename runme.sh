cd /root
mkdir -p /root/.local/share/tldr
tldr -u
mkdir -p /root/.ssh
bash -c "ssh-keygen -t ed25519 -b 4096 -f ~/.ssh/id_ed25519 -N ''"
curl -o ./.bashrc https://raw.githubusercontent.com/kirka1206/dotfiles/main/bashrc
mkdir -p ~/.vim/backup//
curl -o ~/.vimrc https://raw.githubusercontent.com/kirka1206/dotfiles/main/.vimrc
curl -o ~/.gitconfig https://raw.githubusercontent.com/kirka1206/dotfiles/main/.gitconfig
curl -o ~/.tmux.conf https://raw.githubusercontent.com/kirka1206/dotfiles/main/.tmux.conf
