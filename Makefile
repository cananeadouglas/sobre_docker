TAG=$(shell date +%Y.%m.%d)

add:	
	git add .
commit: add
	git commit -m "$(TAG) atualizando docker compose com GLPI dia "
push: 	commit
	git push
