##########
## yazi, terminal file manager
##########
if command -v yazi &>/dev/null; then
  # Install plugins and flavors from ~/.config/yazi/package.toml and upgrade to latest version
  if command -v ya &>/dev/null; then
    # Run in background use AMPERBANG (&|) to avoid blocking shell startup and suppress job control messages
    # AMPERBANG auto-disown the job and redirect stdout and stderr to /dev/null
    (ya pack --install &> /dev/null && ya pack --upgrade &> /dev/null) &|
  fi
fi
