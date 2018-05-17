# Build the application dockerfile
bash scripts/build-scripts/build-app-dockerfile.sh

# Run the tests inside a docker container
docker run -it \
    -v $(pwd)/config/:/usr/src/app/config \
    -v $(pwd)/data/:/usr/src/app/data \
    -v $(pwd)/reports/:/usr/src/app/reports \
    -v $(pwd)/scripts/:/usr/src/app/scripts \
    {{cookiecutter.project_slug}}-application \
    python -m pytest --cov=src