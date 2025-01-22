# webapp variables
WEBAPP_DIR=./webapp
BUILD_COMMAND=npm run build

# server variable
SERVER_DIR=./server
RUN_COMMAND=go run .

build:
	cd $(WEBAPP_DIR) && $(BUILD_COMMAND)
run: build
	cd $(SERVER_DIR) && $(RUN_COMMAND)
