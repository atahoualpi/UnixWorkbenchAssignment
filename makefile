all: README.md

README.md:
	echo "# Peer-graded Assignment: Bash, Make, Git, and GitHub" > README.md
	echo "\n" >> README.md
	date >> README.md
	echo "\n Number of lines of code:" >> README.md	
	wc guessinggame.sh | grep -o "^\s\S*" >> README.md

clean:
	rm README.md
