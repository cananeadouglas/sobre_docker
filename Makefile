TAG=$(shell date +%Y.%m.%d)

add:	
	git add .
commit: add
	git commit -m "$(TAG) atualizando REDIS"
push: 	commit
	git push
