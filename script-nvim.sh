#!/bin/sh

Nvim_Name="nvim-linux64"
Nvim_Link="https://github.com/neovim/neovim/releases/download/nightly/"$Nvim_Name".tar.gz"

echo "Downloading Nvim nightly..."
wget $Nvim_Link

echo "Unpacking..."
tar xzvf $Nvim_Name".tar.gz" 
rm $Nvim_Name".tar.gz"

echo "Adding to local bin folder and adding to bashrc"
mv $Nvim_Name ~/.local/bin/
echo "export PATH=$PATH:"$Nvim_Name"/bin/" >> ~/.bashrc

echo "Cloning Packer Plugin Manager"
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

echo "Cloning my Nvim-Config with Lua in config folder"
git clone https://github.com/scherpinski-r/Nvim-Config
mv Nvim-Config ~/.config/nvim
