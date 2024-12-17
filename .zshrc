# Use pip for
export PATH="$PATH:/opt/homebrew/bin/brew"
export PATH="$PATH:/Users/raj/Library/Python/3.12/bin"
export PATH="/usr/local/texlive/2024basic/bin/universal-darwin:$PATH"
export PATH="/Library/TeX/texbin:$PATH"
export PATH="$PATH:/opt/homebrew/bin/gradle/bin"
export PATH=$PATH:/Users/raj/.config/drag
export PATH=$PATH:/Users/raj/.spicetify
export PATH=$PATH:/Applications/kitty.app/Contents/MacOs/kitty


# using GNU `ls` instead of BSD `ls`
alias ls='/opt/homebrew/opt/coreutils/libexec/gnubin/ls'


export MYUSERNAME="rOnInRaJ"


# `VIVID` colorscheme
# export LS_COLORS="$(vivid generate catppuccin-mocha)"
export LS_COLORS="$(vivid generate one-dark)"

#PATH FOR JAVAFX
# export PATH=/usr/local/java/openjdk/[CHANGEME]/bin:$PATH
# export JAVA_HOME=/usr/local/java/openjdk/[CHANGEME]
# export PATH_TO_FX=/usr/local/java/openjfx/[CHANGEME]/lib
export PATH_TO_FX=/Users/raj/Library/Java/javafx-sdk-17.0.8/lib



# my version of yabai
# export PATH="$PATH:/Users/raj/.config/yabai/src/yabai/bin"

# Required for autocomplete 
# source $HOMEBREW_PREFIX/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# Setting up fuzzy finder
source <(fzf --zsh)

# Required for 'thefuck'
eval $(thefuck --alias)
alias f='fuck'

# idek wtf is going on down here
#  -f "/Users/raj/.ghcup/env" ] && source "/Users/raj/.ghcup/env" # ghcup-env


# alias yabai="/Users/raj/.config/yabai/src/yabai/bin/yabai"
alias ls='/opt/homebrew/opt/coreutils/libexec/gnubin/ls -lh --color'
alias finder='open .; exit'
alias yrs='yabai --restart-service'
alias q='exit'
alias n='nvim $(pwd)'


# Setting up the starship
eval "$(starship init zsh)"


# Created by `pipx` on 2024-08-18 07:20:13
export PATH="$PATH:/Users/raj/.local/bin"

# export LSCOLORS="$(python3 ~/programming_stuff/gnu2bsd/gnu2bsd.py)"
# export LSCOLORS="exfxcxdxbxegedabagacad"

# This the command run whenever zsh starts
echo "\033[0;35mrOnInRaJ: Whats up motherfleckers\n"
fastfetch

# Setting up the config file to copy over to `~/.config` whenever a zsh terminal is started
# Sync .zshrc to ~/.config/ automatically
sync_zshrc() {
    SOURCE="$HOME/.zshrc"
    DESTINATION="$HOME/.config/"

    # Check if the .config directory exists, if not, create it
    if [ ! -d "$DESTINATION" ]; then
        mkdir -p "$DESTINATION"
    fi

    # Sync .zshrc using rsync
    rsync -avh --progress "$SOURCE" "$DESTINATION" > /dev/null 2>&1

    # Optional: Print message (you can remove this if you don't want to see it each time)
    if [ $? -eq 0 ]; then
        # echo ".zshrc copied to ~/.config."
    else
        echo "Failed to copy .zshrc."
    fi
}

# Run the function when Zsh starts
sync_zshrc

