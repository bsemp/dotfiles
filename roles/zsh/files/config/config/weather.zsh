# weather forecast service
function weather() {
 local _locations="${1}"
 local _options="${2}"
 curl --silent "wttr.in/${_locations}?${_options}"
}

function meteo() {
  weather "${1}" "lang=fr&${2}"
}
