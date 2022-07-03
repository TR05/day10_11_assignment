x=$(($RANDOM%2))

if [ $x -eq 1 ]
then
	echo "Heads Wins"
else
	echo "Tails Wins"
fi
