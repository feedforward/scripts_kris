#Clone pyenv from github source 
git clone https://github.com/pyenv/pyenv.git ~/.pyenv


# Export pyenv path to env variables.
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc

# init pyenv script into zshrc

echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc


