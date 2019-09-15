set -x
set -e

# get brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null

brew install curl

# iterm2
brew cask install iterm2
brew install zsh git
brew install zsh-syntax-highlighting
curl -L https://iterm2.com/misc/install_shell_integration.sh | bash

# python
brew install python3
pip3 install ipython
echo """
alias python=`which python3`
alias pip=`which pip3`
alias ipython=`which ipython3`
""" >> ~/.zshrc
source ~/.zshrc


# other utils
brew install wget
brew install zip
brew install gzip
brew install less
brew install vim
brew cask install pycharm-ce
brew install git bash-completion
brew install htop
brew install watch
brew install cmake


# git
brew install git


# requirements
pip3 install dlib==19.17.0
pip3 install ffmpeg==1.4
pip3 install ffmpeg-python==0.2.0
pip3 install glob2==0.7
pip3 install imageio-ffmpeg==0.3.0
pip3 install imutils==0.5.2
pip3 install numpy==1.16.4
pip3 install opencv-python==4.1.0.25
pip3 install pytest==5.0.0
pip3 install pytube==9.5.2
pip3 install matplotlib==3.1.0
pip3 install dill==0.2.9
pip3 install discomp==1.5.0


# docker
brew cask install docker

# get code lab code
cd /home
git clone https://github.com/Iqoqo/dld.disco.lab
cd /home/dld.disco.lab
pytest tests

# lesson 1
docker pull iqoqo/discofy:dld.local
docker tag iqoqo/discofy:dld.local discofy:dld.local
docker run -it -v `pwd`:/home/codelab/ -w /home/codelab/lessons/lesson_1/ discofy:dld.local pytest

echo HASTA LA VICTORIA SIEMPRE
