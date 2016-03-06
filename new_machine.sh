sudo apt-get update
sudo apt-get install haskell-platform git
y
cabal update
git clone https://github.com/santolucito/scripts.git
cd scripts
mv .vimrc ~/.vimrc
mv .profile ~/.profile

sudo add-apt-repository -y ppa:hvr/ghc
sudo apt-get update
sudo apt-get install cabal-install-1.18 ghc-7.8.4 ocaml camlidl
y
echo "PATH=\"$HOME/.cabal/bin:/opt/ghc/7.8.4/bin:/opt/cabal/1.18/bin:$PATH\"" ~/.profile
