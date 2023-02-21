BINARY_NAME=YTM

## Build: Builds binary for requested platform
build-macos-arm:
	@echo "Building ${BINARY_NAME} using UPX and obfuscation..."
	wails build -o ${BINARY_NAME} --clean --upx --platform darwin/arm64

build-macos-intel:
	@echo "Building ${BINARY_NAME} using UPX and obfuscation..."
	wails build -o ${BINARY_NAME} --clean --upx --platform darwin

build-macos:
	@echo "Building ${BINARY_NAME} using UPX and obfuscation..."
	wails build -o ${BINARY_NAME} --clean --upx --platform darwin/universal

build:
	@echo "Building ${BINARY_NAME} using UPX and obfuscation..."
	wails build -o ${BINARY_NAME} -upx -obfuscate true

build-windows:
	@echo "Building ${BINARY_NAME} for Windows using UPX and obfuscation..."
	wails build -o ${BINARY_NAME} -upx -obfuscate true -platform windows/AMD64

build-all:
	@echo "Building ${BINARY_NAME} for Windows and Linux using UPX and obfuscation..."
	wails build -o ${BINARY_NAME} -upx -obfuscate true -platform windows/AMD64,linux/AMD64

install-wails:
	@echo "Starting the script..."
	@echo "Current Go version: \c"
	go version

	@echo "Starting the script..."
	go install github.com/wailsapp/wails/v2/cmd/wails@latest

	@echo "Successfully installed! You can now build the app!"

dev:
	wails dev -browser

clean:
	rm -rf ./build/bin