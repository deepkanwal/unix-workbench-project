all: README.md

README.md:
	touch README.md
	echo "# Guessing Game" >> README.md
	echo "\n" >> README.md
	date >> README.md
	# Add a new line.
	echo "\n" >> README.md
	echo "## LOC" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
