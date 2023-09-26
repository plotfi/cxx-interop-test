all:
	cmake -GNinja -B./build -DBOOTSTRAPINTEROP=1 .
	ninja -C ./build
	cmake -GNinja -B./build -DBOOTSTRAPINTEROP=0 .
	ninja -C ./build
	rm -f compile_commands.json
	ln -s ./build/compile_commands.json

run:
	./build/cxx-interop-test

clean:
	rm -rf ./build compile_commands.json
