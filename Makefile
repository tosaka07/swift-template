
.PHONY: setup
setup:
	@swift build -c release --package-path ./Tools/MyTools/ --product swift-format

.PHONY: format
format:
	@./Tools/MyTools/.build/release/swift-format format Sources Apps -r -i --configuration swift-format.json

.PHONY: lint
lint:
	@./Tools/MyTools/.build/release/swift-format lint Sources Apps -r -p --configuration swift-format.json
