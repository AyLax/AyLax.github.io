cc=hexo


run:
	$(cc) s

gen:
	$(cc) g

.PHONY: clean

clean:
	rm -rf public
