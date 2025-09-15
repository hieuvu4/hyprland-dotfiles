packages
```
sudo pacman -S hyprland kitty git unzip vim bluez bluez-utils waybar swww hyprpicker zathura zathura-djvu zathura-pdf-poppler zathura-ps zathura-cb pavucontrol wireplumber pipewire wl-clipboard fastfetch nautilus brightnessctl cliphist htop ranger hyprsunset dunst thunderbird playerctl
```
font
```
sudo pacman -S ttf-cascadia-code-nerd ttf-cascadia-mono-nerd ttf-fira-code ttf-fira-mono ttf-fira-sans ttf-firacode-nerd ttf-iosevka-nerd ttf-iosevkaterm-nerd ttf-jetbrains-mono-nerd ttf-jetbrains-mono ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-mono ttf-droid noto-fonts-emoji
```
yay
```
git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && cd
```
```
yay -S visual-studio-code-bin zen-browser-bin tofi grimblast-git
```
darkmode
```
sudo pacman -S xdg-desktop-portal-gtk xdg-desktop-portal-hyprland
```
amd gpu
```
sudo pacman -S mesa xf86-video-amdgpu vulkan-radeon libva-mesa-driver radeontop
```
gaming
```
yay -S mangohud
```
firewall
```
sudo pacman -Syu ufw

sudo ufw enable

sudo systemctl enable ufw

sudo ufw status

```
make script executable
```
chmod +x ~/.config/waybar/scripts/bluetooth_toggle.sh
```
```
chmod +x ~/.config/waybar/scripts/wifi_toggle.sh
```
```
chmod +x ~/.config/waybar/scripts/hyprsunset_toggle.sh
```
```
chmod +x ~/.config/waybar/scripts/media_buttons.sh
```
```
chmod +x ~/.config/waybar/scripts/gpu_usage.sh
```
folder
```
cd && mkdir .waybar_states
```