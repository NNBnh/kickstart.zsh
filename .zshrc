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

# History
export HISTSIZE=500000
export HISTFILE="${HOME}/.history"
export SAVEHIST="${HISTSIZE}"

# Settings #TODO
setopt histreduceblanks # Remove superfluous blanks from each command line being added to the history list.
setopt histignorespace # Remove command lines from the history list when the first character on the line is a space, or when one of the expanded aliases contains a leading space.
setopt histignorealldups # Do not enter command lines into the history list if they are duplicates of the previous event.
setopt autocd # Switching directories for lazy people.
setopt autopushd pushdminus pushdsilent pushdtohome pushdignoredups # See: http://zsh.sourceforge.net/Intro/intro_6.html
setopt nohup # Don't kill background jobs when I logout.
setopt extendedglob # See: http://zsh.sourceforge.net/Intro/intro_2.html
setopt globdots # Do not require a leading '.' in a filename to be matched explicitly.
# setopt vi # Use vi key bindings in Zsh.
# setopt shwordsplit # Causes field splitting to be performed on unquoted parameter expansions.
setopt automenu # Automatically use menu completion after the second consecutive request for completion.
setopt cdablevars # If the argument to a cd command (or an implied cd with the AUTO_CD option set) is not a directory, and does not begin with a slash, try to expand the expression as if it were preceded by a '~'.
setopt listpacked # Try to make the completion list smaller (occupying less lines) by printing the matches in columns with different widths.
setopt nolisttypes # Don't show types in completion lists.
setopt alwaystoend # If a completion is performed with the cursor within a word, and a full completion is inserted, the cursor is moved to the end of the word.
# setopt correct # Try to correct the spelling of commands.
setopt no_nomatch # https://github.com/robbyrussell/oh-my-zsh/issues/449
setopt rmstarsilent # Disable annoying confirm

# Aliases #TODO
alias md='mkdir -p'
alias dl='trash-put'
alias a='7z'
alias g='git'

# #TODO
chpwd() { ls --almost-all --group-directories-first }
s() { selection=(); for item in "$@"; do selection+=("$(readlink -f "${item}")"); done }
mv() { if [ "$#" -eq 0 ]; then command mv    "${selection[@]}" .; else command mv    "$@"; fi }
cp() { if [ "$#" -eq 0 ]; then command cp -r "${selection[@]}" .; else command cp -r "$@"; fi }
ln() { if [ "$#" -eq 0 ]; then command ln -s "${selection[@]}" .; else command ln -s "$@"; fi }
