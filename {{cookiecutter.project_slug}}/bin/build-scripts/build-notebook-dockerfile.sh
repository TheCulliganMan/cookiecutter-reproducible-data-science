# build the base image
bash bin/build-scripts/build-app-dockerfile.sh
# build the notebook on top of the base image
docker build -f dockerfiles/dockerfile-application -t {{cookiecutter.project_slug}}_notebook ./notebooks