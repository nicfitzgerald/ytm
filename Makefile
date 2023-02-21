BINARY_NAME=YTM

## Build: Builds binary for current platform
build:
	@echo "Building ${BINARY_NAME} using UPX and obfuscation..."
	wails build -o ${BINARY_NAME} -upx -obfuscate true

build-windows:
	@echo "Building ${BINARY_NAME} for Windows using UPX and obfuscation..."
	wails build -o ${BINARY_NAME} -upx -obfuscate true -platform windows/AMD64

build-all:
	@echo "Building ${BINARY_NAME} for Windows and Linux using UPX and obfuscation..."
	wails build -o ${BINARY_NAME} -upx -obfuscate true -platform windows/AMD64,linux/AMD64

dev:
	wails dev -browser

clean:
	rm -rf ./build/bin