h=0
t=0

while (($h<=21 || $t<=21))
do
	x=$(($RANDOM%2))

	if [ $x -eq 1 ]
	then
		((h++))

	else
		((t++))

	fi

done

if [ $h -eq $t ]
then
	echo "Its a tie!"
elif [ $h -lt $t ]
then
	r=$(($t-$h))
	echo "Tails wins by $r"
else
	r=$(($h-$t))
	echo "Heads wins by $r"
fi
