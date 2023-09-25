all:
	cmake -GNinja -B./build .
	ninja -C ./build

clean:
	rm -rf ./build
