TAG=$(shell date +%Y.%m.%d)

add:	
	git add .
commit: add
	git commit -m "$(TAG) adição cloud9, onlyoffice, kavita, moodle e speed-test - docker"
push: 	commit
	git push
