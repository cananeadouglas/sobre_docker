TAG=$(shell date +%Y.%m.%d)

add:	
	git add .
commit: add
	git commit -m "$(TAG) atualizando novo arquivo sql e exercicio"
push: 	commit
	git push
