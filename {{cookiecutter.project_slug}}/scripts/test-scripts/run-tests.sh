# Build the application dockerfile
bash scripts/build-scripts/build-app-dockerfile.sh
# Run the tests inside a docker container
docker run \
    -v ./config:/usr/src/app/config \
    -v ./data:/usr/src/app/data \
    -v ./reports:/usr/src/app/reports \
    -v ./scripts:/usr/src/app/scripts \
    {{cookiecutter.project_slug}}-application \
    python -m pytest --cov=./src ./tests