README.md: guessinggame.sh
	touch README.md
	@echo 'project title'>>README.md
	@echo 'name'>>README.md
	@echo $$(awk 'END{print NR}' guessinggame.sh) ' Lines of code' >>README.md
	@echo $$(stat -f "%Sm" guessinggame.sh) >>README.md

