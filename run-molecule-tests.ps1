$CURRENT_DIRECTORY=Get-Location
$DOCKER_VOLUME_DIRECTORY_NAME="molecule"
$MOLECULE_VERSION="3.0.3"

docker run --rm -it -v "${CURRENT_DIRECTORY}:/tmp/${DOCKER_VOLUME_DIRECTORY_NAME}:ro" -v "/var/run/docker.sock:/var/run/docker.sock" -w "/tmp/${DOCKER_VOLUME_DIRECTORY_NAME}" quay.io/ansible/molecule:${MOLECULE_VERSION} molecule test