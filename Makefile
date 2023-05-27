TAG=$(shell date +%Y.%m.%d)

add:	
	git add .
commit: add
	git commit -m "$(TAG) excluindo nagios"
push: 	commit
	git push
