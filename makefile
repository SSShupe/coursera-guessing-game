
README.md:
	touch README.sh

	echo "#The title of this project is The Guessing Game!">> README.md

README.md: guessinggame.sh

	echo "The date and time that make was run was: $now." >> README.md
	lines="`wc -l guessinggame.sh | egrep -o "[0-9]+"`"
	echo "The number of lines in the guessinggame.sh code are: " >> README.md
	echo "$lines" >> README.md
