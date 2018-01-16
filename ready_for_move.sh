cp ~/.zshrc .
cp ~/.gitconfig .
cp ~/.gitignore_global .
ls ~/repositories >> repositories.txt
rm Brewfile && brew bundle dump
