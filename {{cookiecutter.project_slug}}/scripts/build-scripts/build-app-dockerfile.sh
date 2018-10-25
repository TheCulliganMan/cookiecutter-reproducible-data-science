# build the base image
docker build -f dockerfiles/dockerfile-app -t {{cookiecutter.project_slug}}-app .
