README.md: guessinggame.sh
	echo "Guessing game" > README.md
	echo >> README.md
	echo "Make was run at:" >> README.md
	date >> README.md
	echo >> README.md
	echo "Number of lines:" >> README.md
	cat guessinggame.sh | wc -l >> README.md

