# Every team fills in the commands for their own stack.
# The CI pipeline calls these targets, so the names must not change.
#
# Examples:
#   Node    install: npm ci          test: npm test        build: npm run build
#   Python  install: pip install -r requirements.txt
#                                    test: pytest          build: echo "no build step"
#   Java    install: ./mvnw -B dependency:go-offline
#                                    test: ./mvnw test     build: ./mvnw package


.PHONY: install test build run docker-build docker-up

install:
	@python3 --version

test:
	@python3 -m unittest discover -s tests -v

build:
	@python3 -c "from pathlib import Path; files = ['index.html', 'add-expense.html', 'budget.html', 'css/shared.css', 'css/style.css', 'js/app.js']; missing = [f for f in files if not Path(f).is_file()]; print('Missing files:', missing) if missing else print('BILLBOOK build checks passed'); raise SystemExit(bool(missing))"

run:
	@python3 -m http.server 8000

docker-build:
	docker build -t billbook:local .

docker-up:
	docker compose up --build
