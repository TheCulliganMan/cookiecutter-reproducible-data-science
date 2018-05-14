# build the base image
docker build -f dockerfiles/dockerfile-application -t {{cookiecutter.project_slug}}-application .
