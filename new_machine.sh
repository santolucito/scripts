echo 'mark24' | sudo -kS ls

sudo apt-get update
sudo apt-get -y install vim-gui-common vim-runtime
cp .vimrc ~/.vimrc
cp .profile ~/.profile
cp .inputrc ~/.inputrc

source ~/.profile\

printf '\n\n\nLoaded profile preferences...\n\n\n'


sudo apt-get -y install haskell-platform 
sudo add-apt-repository -y ppa:hvr/ghc
sudo apt-get update
sudo apt-get -y install cabal-install-1.22 ghc-7.10.2
cabal update

#for liquidhaskell 
#sudo apt-get install ocaml camlidl

printf '\n\n\nInstalled Haskell...\n\n\n'

git config --global user.name "Mark Santolucito"
git config --global user.email "mark.santolucito@yale.edu"

git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=3600000'

printf '\n\n\nSetup git...\n\n\n'
