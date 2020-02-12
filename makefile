
all:README.md

README.md:
	touch $@
	echo "Readme Project">> $@
	date >> $@
	cat guessinggame.sh|wc -l >> $@

clean:
	rm README.md