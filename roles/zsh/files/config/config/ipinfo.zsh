# Display the public IP address of the current machine.
function whatismyip() {
  echo "$(curl --silent "https://ifconfig.me/ip")"
}

# Display information about a public IP address or ASN Number.
# By default, use the public IP address of the current machine.
# Example:
#   - ipinfo
#   - ipinfo 8.8.8.8
#   - ipinfo 2a02:26f0:3100::1732:372
#   - ipinfo AS15169
function ipinfo() {
  local _TARGET_URL="https://api.ipapi.is"
  if [[ -n "$1" ]]; then
    local _URL_PARAMS="?q=$1"
  fi
  local _RESPONSE_DATA=$(curl --silent "${_TARGET_URL}${_URL_PARAMS}")
  if [[ "$(jq 'has("error")' <<< "${_RESPONSE_DATA}")" == 'true' ]]; then
    echo "$(jq -r '.error' <<< "${_RESPONSE_DATA}")"
    return 1
  fi
  echo "${_RESPONSE_DATA}" | jq '.'
}
