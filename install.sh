sudo pacman -Suy
sudo pacman -S brightnessctl git waybar nvim zsh firefox fzf bat fastfetch

for i in hypr kitty nvim waybar; do
    sudo rm -rf ~/.config/$i
    sudo mv $i ~/.config/
done

for i in app dctl lpy opn; do
    sudo chmod 0777 $i
    sudo mv $i /usr/bin/
done

chsh -s /usr/bin/zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
sudo mv MesloLGS\ NF\ Bold.ttf /usr/share/fonts
