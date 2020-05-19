all:README.md

README.md:guessinggame.sh
	echo "## Unix Workbench - Assignment" > README.md
	echo "*A peer-graded assignment as part of the "Unix Workbench" course offered by Johns Hopkins University on [www.coursera.org](https://www.coursera.org/)*\n" >> README.md
	echo "Using bash scripting, create a game which asks the user to guess the number of files in the working directory. In the event of a wrong answer, the program informs the user if their response is either too low or too high. The program must must continue to ask for responses until the correct answer is provided. The game finishes off with a congratulatory message upon entry of the correct answer by the user.\n" >> README.md
	echo "**Date and time of running make:** $$(date '+%d-%m-%Y %H:%M:%S') \n" >> README.md
	echo "**Number of lines of code in guessinggame.sh:** $$(egrep ^[^#\s] guessinggame.sh | wc -l)" >> README.md
