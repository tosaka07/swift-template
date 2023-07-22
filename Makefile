
.PHONY: all
all: help

.PHONY: help
help: ## ヘルプ表示します
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

.PHONY: setup
setup: ## プロジェクト準備を行います
	@swift build -c release --package-path ./Tools/MyTools/ --product swift-format

.PHONY: format
format: ## コードをフォーマットします
	@./Tools/MyTools/.build/release/swift-format format -r -p -i \
		--configuration swift-format.json \
		./Sources/ \
		./Apps/ \
		./Tests/ \
		./Package.swift

.PHONY: lint
lint: ## コードを静的解析します
	@./Tools/MyTools/.build/release/swift-format lint -r -p \
		--configuration swift-format.json \
		./Sources/ \
		./Apps/ \
		./Tests/ \
		./Package.swift

.PHONY: format-diff
format-diff: ## STAGED_FILES のみフォーマットします
	@./Tools/MyTools/.build/release/swift-format format -r -p -i ${STAGED_FILES}

.PHONY: set-gitmessage
set-gitmessage: ## Conventional Commits のテンプレをインストールします
	git config commit.template .gitmessage
