# https://github.com/akamai/akamai-docker
# https://github.com/akamai/cli#install-with-docker
alias akamai-shell='docker run -it --rm -v ${XDG_CONFIG_HOME}/akamai/.edgerc:/root/.edgerc:ro docker.io/akamai/shell:latest'
alias akamai='docker run -it --rm -v ${XDG_CONFIG_HOME}/akamai/.edgerc:/root/.edgerc:ro docker.io/akamai/shell:latest akamai'

# Useful functions
export AKAMAI_PRAGMA_HEADERS_FULL="akamai-x-get-client-ip, akamai-x-cache-on, akamai-x-cache-remote-on, akamai-x-check-cacheable, akamai-x-get-cache-key, akamai-x-get-extracted-values, akamai-x-get-nonces, akamai-x-get-ssl-client-session-id, akamai-x-get-true-cache-key, akamai-x-serial-no, akamai-x-feo-trace, akamai-x-get-request-id, akamai-x-get-cache-tags"
export AKAMAI_PRAGMA_HEADERS="akamai-x-get-client-ip, akamai-x-cache-on, akamai-x-cache-remote-on, akamai-x-check-cacheable, akamai-x-get-cache-key, akamai-x-get-cache-tags"

function akcurl() {
  curl -I -H "Pragma: ${AKAMAI_PRAGMA_HEADERS}" ${@}
}

function akhttp() {
  local _url="$1"
  shift
  http ${_url} Pragma:"${AKAMAI_PRAGMA_HEADERS}" ${@}
}
