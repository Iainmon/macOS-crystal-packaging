

build:
	shards build --link-flags="-L`pwd`/vendor"

run: build
	./bin/app

package:
	shards build --release --link-flags="-rpath @executable_path/../Frameworks -L`pwd`/vendor"
	
inspect:
	otool -L ./bin/app

validate:
	otool -L ./bin/app | grep local

