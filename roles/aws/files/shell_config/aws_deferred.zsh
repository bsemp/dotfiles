
# https://hub.docker.com/r/amazon/aws-cli
alias aws="docker run --rm -ti -v ${XDG_CONFIG_HOME}/aws:/root/.aws -v $(pwd):/aws amazon/aws-cli:latest"
