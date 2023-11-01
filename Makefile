TAG=$(shell date +%Y.%m.%d)

add:	
	git add .
commit: add
	git commit -m "$(TAG) adicionando a pasta ccplus para programação em linguagem C"
push: 	commit
	git push
