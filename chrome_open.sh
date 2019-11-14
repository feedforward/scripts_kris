if [ $1 -eq 0 ]
then
	open -a "Google Chrome" --args --profile-directory=Default
fi

if [ $1 -gt 0 ]
then
	open -a "Google Chrome" --args --profile-directory="Profile $1"
fi
