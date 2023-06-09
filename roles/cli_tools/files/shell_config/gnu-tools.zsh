##########
## CURL, COREUTILS, GREP, GNU-GETOPT
##########
export CURL_HOME=${XDG_CONFIG_HOME}/curl
# Use brew installed commands instead of MacOS default's one
export PATH="$(brew --prefix)/opt/curl/bin:${PATH}"
export PATH="$(brew --prefix)/opt/coreutils/libexec/gnubin:${PATH}"
export PATH="$(brew --prefix)/opt/grep/libexec/gnubin:${PATH}"
export PATH="$(brew --prefix)/opt/gnu-getopt/bin:${PATH}"

##########
## GNU Screen
##########
if command -v screen &>/dev/null; then
  alias screen="screen -c ${XDG_CONFIG_HOME}/screen/.screenrc"
fi
