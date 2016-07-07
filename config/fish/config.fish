# Alias the program rmtrash so I don't delete shit by accident
# alias rm="rmtrash"

alias rme="rm -riv"

# Alias "git graph" so that it's prettier. Command taken from David Snyder

# Paths to your tackle
set tacklebox_path ~/.tackle ~/.tacklebox

# Base16 Shell
if status --is-interactive
    eval sh $HOME/.config/base16-shell/scripts/base16-default-dark.sh
end


# Which modules would you like to load? (modules can be found in ~/.tackle/modules/*)
# Custom modules may be added to ~/.tacklebox/modules/
# Example format: set tacklebox_modules virtualfish virtualhooks

# Which plugins would you like to enable? (plugins can be found in ~/.tackle/plugins/*)
# Custom plugins may be added to ~/.tacklebox/plugins/
# Example format: set tacklebox_plugins python extract

set tacklebox_path ~/.tackle
set tacklebox_modules virtualfish virtualhooks
set tacklebox_plugins extract grc pip python up
set tacklebox_theme entropy
source ~/.tacklebox/tacklebox.fish

# Load Tacklebox configuration
. ~/.tacklebox/tacklebox.fish


# added by Anaconda3 2.4.1 installer
set PATH "/Users/theLoaner/anaconda/bin" $PATH

# for rbenv
# I uninstalled it, so this is useless
# status --is-interactive; and . (rbenv init -|psub)

# redefined fish_prompt to work with fish_prompt
#function fish_prompt
#    ~/.powerline-shell.py $status --shell bare ^/dev/null
#end
