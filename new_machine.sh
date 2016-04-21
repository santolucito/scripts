sudo apt-get update
sudo apt-get install haskell-platform git
y
git clone https://github.com/santolucito/scripts.git
cd scripts
mv .vimrc ~/.vimrc
mv .profile ~/.profile

sudo add-apt-repository -y ppa:hvr/ghc
sudo apt-get update
sudo apt-get install cabal-install-1.22 ghc-7.10.2 
#for liquidhaskell 
#sudo apt-get install ocaml camlidl

echo "PATH=\"$HOME/.cabal/bin:/opt/ghc/7.10.2/bin:/opt/cabal/1.22/bin:$PATH\"" ~/.profile

cabal update
