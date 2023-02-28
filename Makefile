TAG=$(shell date +%Y.%m.%d)

add:	
	git add .
commit: add
	git commit -m "$(TAG) atualizando pasta docker_file mysql e script.sql meubanco"
push: 	commit
	git push
