# Build the application dockerfile
bash scripts/build-scripts/build-app-dockerfile.sh

# Run the tests inside a docker container
docker-compose -f docker-compose-development.yml run {{cookiecutter.project_slug}}-app pytest --cov --cov-config=.coveragerc
