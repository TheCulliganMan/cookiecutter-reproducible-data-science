# build the base image
bash scripts/build-scripts/build-app-dockerfile.sh
# build the notebook on top of the base image
docker build -f dockerfiles/dockerfile-notebook -t {{cookiecutter.project_slug}}-notebook .