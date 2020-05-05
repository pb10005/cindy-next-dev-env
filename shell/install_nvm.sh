git clone https://github.com/creationix/nvm.git ~/.nvm

echo '''
if [[ -s ~/.nvm/nvm.sh ]];
then source ~/.nvm/nvm.sh
fi
''' >> ~/.bash_profile

. ~/.bash_profile

nvm install stable
