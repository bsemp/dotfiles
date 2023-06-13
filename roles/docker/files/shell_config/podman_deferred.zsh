if command -v podman &>/dev/null; then
    # Override common docker command with podman
    alias docker='podman'
fi

if command -v podman-compose &>/dev/null; then
    # Override common docker-compose command with podman-compose
    alias docker-compose='podman-compose'
fi
