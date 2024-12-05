#!/bin/bash
name=$USER
echo "Hi, $USER! What can I help for you?
May I suggest to create a repository?
If yes, just type in yes."

read yes

if [ "$yes" = "yes" ]; then
       echo "Good idea!"
       echo "Please find below your current branches:"

       git branch -a

       echo -e "\nPlease give me the name of the new repo or type no if you changed your mind!"
       read repoName

       if [ "$repoName" != "no" ]; then
		git checkout -b "$repoName"
		echo "Enjoy!"
		git branch -a
	else
		echo "No worries! Next time then."
	fi
else
	echo "No worries! Next time then."
fi
