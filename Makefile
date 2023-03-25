TAG=$(shell date +%Y.%m.%d)

add:	
	git add .
commit: add
	git commit -m "$(TAG) Adicionando pasta CUPS - docker-compose"
push: 	commit
	git push
