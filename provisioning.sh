echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf 
sudo apt install vim 
sudo apt install scala
sudo apt install golang
sudo apt install git
sudo apt install cmake
sudo apt install iftop
sudo apt install python-pip
sudo apt install python3 
sudo apt install python3-pip
sudo apt install tmux
sudo apt install ruby
sudo apt install clang
sudo apt install unzip
sudo apt install mecab libmecab-dev mecab-ipadic
sudo apt install mecab-ipadic-utf8
sudo apt install python-mecab
sudo pip install regex bs4 numpy scit-learn
sudo pip3 install regex bs4 numpy scit-learn

sudo apt install mecab libmecab-dev mecab-ipadic
sudo apt install mecab-ipadic-utf8
sudo apt install python-mecab

sudo pip3 install mecab-python3

# install neologd
git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git
cd mecab-ipadic-neologd
./bin/install-mecab-ipadic-neologd -n
cd ..

# vimrcの設定
git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
cat vimrc | tee ~/.vimrc

# tmuxの設定
cat tmux.conf | tee ~/.tmux.conf

# install bazel 
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer
echo "deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8" | sudo tee /etc/apt/sources.list.d/bazel.list
curl https://bazel.build/bazel-release.pub.gpg | sudo apt-key add -
sudo apt-get update && sudo apt-get install bazel
sudo apt-get upgrade bazel

# opencvのインストール
git clone https://github.com/opencv/opencv.git
cd opencv
mkdir build
cmake ..
make -j4
sudo make install
cd ..
cd ..

