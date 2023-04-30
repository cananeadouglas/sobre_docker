TAG=$(shell date +%Y.%m.%d)

add:	
	git add .
commit: add
	git commit -m "$(TAG) clonezilla - docker-compose"
push: 	commit
	git push
