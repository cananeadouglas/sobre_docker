TAG=$(shell date +%Y.%m.%d)

add:	
	git add .
commit: add
	git commit -m "$(TAG) bind9(em andamento) - docker-compose"
push: 	commit
	git push
