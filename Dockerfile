FROM hashicorp/terraform:1.1.7

ARG TERRAGRUNT_VERSION=0.36.3
RUN wget "https://github.com/gruntwork-io/terragrunt/releases/download/v${TERRAGRUNT_VERSION}/terragrunt_linux_amd64" -O /usr/local/bin/terragrunt --no-verbose \
    && chmod +x /usr/local/bin/terragrunt

## remove WORKDIR and ENTRYPOINT FROM terraform image
WORKDIR /
ENTRYPOINT []