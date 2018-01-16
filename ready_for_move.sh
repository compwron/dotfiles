cp ~/.zshrc .
cp ~/.gitconfig .
rm Brewfile && brew bundle dump
cp ~/.gitignore_global .
ls ~/repositories > repositories.txt
