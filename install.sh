echo "Arch HyprLand Minimum Applications Installer"
echo "by Xenon"

read -p "Are you on a virtual machine ? [Y/n] : " vm
if [[ "$vm" == "y" || "$vm" == "Y" ]]; then
    echo "Installing Virtual Box drivers..."
    sudo pacman -S virtualbox-guest-utils
    sudo systemctl enable --now vboxservice
elif [[ "$vm" == "n" || "$vm" == "N" ]]; then	
    echo "No Virtual Box drivers, understood."
else	
    echo "Please enter Y (yes) or N (no)."
fi

sudo pacman -S rofi
sudo pacman -S firefox
sudo pacman -S alacritty
sudo pacman -S gedit
sudo pacman -S vlc
sudo pacman -S thunar
sudo pacman -S pavucontrol

echo " "
echo "Put \" menu = \"rofi -show drun\" \" "
echo "into ~/.config/hypr/hyprland.lua (with nano)"
echo " "
echo "Thank you for used AHMAI. Enjoy with Hyprland."
echo " "
echo " "
echo "Once you did the instructions up here, restart your computer."
