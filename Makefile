.PHONY: test
test: haxelib
	haxe test.hxml

haxelib:
	mkdir -p haxelib
	haxelib install utest

clean:
	rm -rf haxelib
