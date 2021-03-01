APP_NAME = consul-alerts
VERSION = latest

all: clean build

build: clean
	env CGO_ENABLED=0 GOOS=linux go build -ldflags="-s -w" -o bin/$(APP_NAME) .

build-local: clean
	env CGO_ENABLED=0 go build -ldflags="-s -w" -o bin/$(APP_NAME) .

clean:
	rm -rf ./bin

run:
	go run .
