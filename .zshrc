# Plugins ------------------------------------------------------------------------------------------

# Zplug
test -f ~/.zplug/init.zsh || git clone https://github.com/zplug/zplug ~/.zplug
source ~/.zplug/init.zsh

zplug zdharma/fast-syntax-highlighting
zplug zsh-users/zsh-autosuggestions
zplug marlonrichert/zsh-autocomplete

zplug check || zplug install
zplug load

# Starship
command -v starship >/dev/null || curl -sS https://starship.rs/install.sh | sh
eval "$(starship init zsh)"


# Environment variables ----------------------------------------------------------------------------

# History
export HISTSIZE=50000
export SAVEHIST=10000
export HISTFILE="${HOME}/.zsh_history"

# #TODO

# Options ------------------------------------------------------------------------------------------

# Changing Directories
setopt auto_cd                   # Cd by enter a directory's path.
setopt auto_pushd                # Make cd push the old directory onto the directory stack.
setopt pushd_ignore_dups         # Don’t push multiple copies of the same directory onto the directory stack.
setopt pushd_minus               # Exchanges the meanings of ‘+’ and ‘-’ when used with a number to specify a directory in the stack.

# History
setopt extended_history          # Record timestamp of command in HISTFILE.
setopt hist_expire_dups_first    # Delete duplicates first when HISTFILE size exceeds HISTSIZE.
setopt hist_ignore_dups          # Ignore duplicated commands history list.
setopt hist_ignore_space         # Ignore commands that start with space.
setopt hist_verify               # Show command with history expansion to user before running it.
setopt share_history             # Share command history data.

# Completion
setopt always_to_end             # If a completion is performed and a full completion is inserted, the cursor is moved to the end of the word.
setopt auto_menu                 # Show completion menu on successive tab press.
setopt complete_in_word          # The cursor isn't set to the end of the word if completion is started.

# Expansion and Globbing
setopt extended_glob             # Treat the ‘#’, ‘~’ and ‘^’ characters as part of patterns for filename generation, etc.
setopt glob_dots                 # Do not require a leading ‘.’ in a filename to be matched explicitly.

# Misc
setopt long_list_jobs            # Print job notifications in the long format by default.
setopt interactive_comments      # Allow comments even in interactive shells.


# Aliases ------------------------------------------------------------------------------------------

alias _='sudo'
alias l='ls -Ah --group-directories-first'
alias md='mkdir -p'
alias dl='trash-put'
alias a='7z'
alias g='git'

# Functions ----------------------------------------------------------------------------------------

# Ls whenever the current working directory is changed.
chpwd_ls() { l }

# #TODO
s() { selection=(); for item in "$@"; do selection+=("$(readlink -f "${item}")"); done }
mv() { if [ "$#" -eq 0 ]; then command mv -i  "${selection[@]}" .; else command mv -i  "$@"; fi }
cp() { if [ "$#" -eq 0 ]; then command cp -ir "${selection[@]}" .; else command cp -ir "$@"; fi }
ln() { if [ "$#" -eq 0 ]; then command ln -s  "${selection[@]}" .; else command ln -s  "$@"; fi }
