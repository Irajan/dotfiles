# Update existing package repos

echo "Updating existing repository"
sudo apt update && sudo apt upgrade

echo "Installing alacritty"
sudo apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3

cp -r ./alacritty ~/.config

echo "Installing curl"
sudo apt install curl

echo "Installing starship"
curl -sS https://starship.rs/install.sh | sh

cp starship.toml ~/.config/starship.toml

# Install nerd fonts
echo "Copying nerd fonts"
sudo cp -r ./fonts /usr/local/share

echo "Installing zsh"
sudo apt install zsh

# Install oh my zsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# Make zsh as default terminal
sudo chsh -s $(which zsh)

# Copy zsh rc file
cp .zshrc ~/.zshrc

echo "Installing neovim"
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim

cp -r ./nvim ~/.config

echo "Install ripgrep binary for fuzzy finding"
sudo apt-get install ripgrep

echo "Installing tmux"
sudo apt install tmux

cp .tmux.conf ~/.tmux.conf

echo "Installing lazy git"
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin

rm -rf lazygit.tar.gz
rm -rf lazygit

echo "Intalling jump"
sudo snap install jump

