# setup fonts

# download nerd fonts
# cd $HOME/Downloads
curl -Lo VictorMono.tar.xz https://github.com/ryanoasis/nerd-fonts/releases/latest/download/VictorMono.tar.xz

mkdir $HOME/Downloads/victor-mono
tar -xvf VictorMono.tar.xz -C $HOME/Downloads/victor-mono
rm VictorMono.tar.xz

mkdir -p $HOME/.local/share/fonts/TTF
cp $HOME/Downloads/victor-mono/VictorMonoNerdFontMono*.ttf $HOME/.local/share/fonts/TTF
rm -rf $HOME/Downloads/victor-mono/

# refresh font cache
fc-cache -f -v

