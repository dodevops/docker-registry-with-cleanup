# Docker registry with cleanup

This docker image uses the [registry docker image](https://hub.docker.com/_/registry) as a base and extends it with
a regular cleanup taken from [here](https://github.com/wshihadeh/docker-registry).

## Configuration

The only configuration option is the `CLEANUP_CRON` environment variable, where the time when the cleanup shall happen 
can be defined (in typical cron definiton, like for example `0 0 * * *`, which is also the default and means every day on midnight).

## Usage

Use the image in your docker/compose/kubernetes projects with the address `ghcr.io/dodevops/docker-registry-with-cleanup:main`
for the latest image. Other versions can be found under 
[container packages](https://github.com/dodevops/docker-registry-with-cleanup/pkgs/container/docker-registry-with-cleanup)