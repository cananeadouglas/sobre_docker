TAG=$(shell date +%Y.%m.%d)

add:	
	git add .
commit: add
	git commit -m "$(TAG) adicionando a pasta wordpress puro"
push: 	commit
	git push
