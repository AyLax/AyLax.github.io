cc=hexo


pre:
	npm install hexo-cli -g
	npm install hexo-render-pug hexo-renderer-stylus --save
	git submodule init
	git submodule update
	npm install

run:
	$(cc) s

gen:
	$(cc) g

.PHONY: clean

clean:
	rm -rf public
