# webapp variables
WEBAPP_DIR=./webapp
WEB_BUILD_COMMAND=npm run build

# server variable
SERVER_DIR=./server
RUN_COMMAND=go run .
SERVER_BUILD_COMMAND=go build -o student .

web:
	cd $(WEBAPP_DIR) && $(WEB_BUILD_COMMAND)
run: web
	cd $(SERVER_DIR) && $(RUN_COMMAND)
build:
	cd $(SERVER_DIR) && $(SERVER_BUILD_COMMAND)
