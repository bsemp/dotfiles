# https://learn.microsoft.com/en-us/cli/azure/run-azure-cli-docker?view=azure-cli-latest
alias az="docker run --rm -ti -v ${XDG_CONFIG_HOME}/azure:/root/.azure mcr.microsoft.com/azure-cli:latest az"
