# dotfiles

All my dotfiles that I use day to day. To use this repository:

1. Fork this repository and clone it to local

    ```git clone https://github.com/<YOUR_GITHUB_USERNAME>/dotfiles.git ~/bin```

2. Load environment variables, shell settings and aliases
    
    ```ln -sf ~/bin/dotfiles/zshrc ~/.zshrc```

3. Load SSH settings 

    ```
    mkdir -p ~/.ssh
    ln -sf ~/bin/dotfiles/ssh/config ~/.ssh/config
    ```
