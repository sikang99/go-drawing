#
# Makefile for go-drawing
#
.PHONY: usage edit build clean git
usage:
	@echo "make [build|run|web|kill]"

build b:
	GO111MODULE=on go build -o server

run r:
	./server &

kill k:
	pkill server

web w:
	open http://localhost:8080
	simplehttpserver

clean:
	rm -f server

#----------------------------------------------------------------------------------
git g:
	@echo "make (git:g) [update|store]"
git-update gu:
	git add .gitignore *.md Makefile
	git commit -m "Initial commit to start coding after forking"
	git push
git-store gs:
	git config credential.helper store
#----------------------------------------------------------------------------------

