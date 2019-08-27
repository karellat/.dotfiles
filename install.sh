OLD=$(mktemp -d --suffix=_dotfiles) 
echo "Removing original .dotfiles to $OLD"

DOTFILES=".vimrc .zshrc .tmux.conf"
echo "Supported .dotfiles $DOTFILES"

for f in $DOTFILES; do
	cp "$HOME/$f" $OLD
done

echo "Copying .dotfiles from repository to HOME" 

for f in $DOTFILES; do
	cp "./$f" $HOME
done



