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
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q
#install et https://eternalterminal.dev/ - ssh без единого разрыва. не забыть запустить демон et на сервере :)
#apt install -y software-properties-common
#add-apt-repository ppa:jgmath2000/et
#apt update
#apt -y install et
