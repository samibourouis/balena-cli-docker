Daily Builds of Balena CLI docker image, intended to be used in CI/CD operations.

Tags:

- samibourouis/balena-cli:latest : amd64

- samibourouis/balena-cli:armhf-latest  : armhf/armv7

Versions information :
- alpine:3.9
- balena-cli@11.0.6+

Example CI/CD script :

    - balena version

    - balena login --credentials --email $BALENA_USERNAME --password $BALENA_PASSWORD

    - balena push $PROJECT_NAME --source . --registry-secrets .registry-secrets.yml

Built with Gitlab CI