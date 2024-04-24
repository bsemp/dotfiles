# Use ARM64 compatible image (https://cloud.google.com/sdk/docs/downloads-docker)
alias gcloud="docker run -ti --rm -v ${XDG_CONFIG_HOME}/gcloud:/root/.config/gcloud gcr.io/google.com/cloudsdktool/google-cloud-cli:debian_component_based gcloud"
