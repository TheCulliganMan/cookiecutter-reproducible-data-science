build-notebook:
		bash scripts/build-scripts/build-notebook-dockerfile.sh

build-app:
		bash scripts/build-scripts/build-app-dockerfile.sh

build-development:
		bash scripts/build-scripts/build-all.sh

build-all:
		bash scripts/build-scripts/build-all.sh

run-notebook:
		bash scripts/run-scripts/run-notebook.sh

run-app:
		bash scripts/run-scripts/run-app.sh

run-development:
		bash scripts/run-scripts/run-development.sh

run-tests:
		bash scripts/test-scripts/run-tests.sh

stop-notebook:
		docker-compose -f docker-compose-notebook.yml down

stop-app:
		docker-compose -f docker-compose-app.yml down

stop-development:
		docker-compose -f docker-compose-development.yml down




