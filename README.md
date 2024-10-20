**Wifi**:

Configure in `nmtui` 

**Bluetooth**:
```
sudo pacman -S bluez bluez-utils
```
Activate bluetooth:
```
sudo systemctl start bluetooth
```

Autostart bluetooth:  
```
sudo systemctl enable bluetooth
```

**Git**:
```
sudo pacman -S git
```

**Yay**:
```
git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && cd
```


**Fonts**:
```
sudo pacman -S ttf-cascadia-code-nerd ttf-cascadia-mono-nerd ttf-fira-code ttf-fira-mono ttf-fira-sans ttf-firacode-nerd ttf-iosevka-nerd ttf-iosevkaterm-nerd ttf-jetbrains-mono-nerd ttf-jetbrains-mono ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-mono
```

**Waybar**:
```
sudo pacman -S waybar
```

**Tofi + Grimblast**: 
```
yay -S tofi grimblast-git
```

**Cliphist + Hyprpicker**:
```
sudo pacman -S cliphist hyprpicker
```

**Pipewire + Pavucontrol**:
```
sudo pacman -S pipewire pipewire-pulse wireplumber pavucontrol
```

**GTK settings**:
```
sudo pacman -S gtk3 gtk4
```

**Plasma**:
```
sudo pacman -S plasma-meta
```

For changing window decoration + icons

**Applications**:

```
sudo pacman -S thunar firefox unzip obsidian
```