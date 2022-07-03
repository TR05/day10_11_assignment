h=0
t=0
a=0
while ((a<=5))
do
	x=$(($RANDOM%2))

	if [ $x -eq 1 ]
	then
		((h++))
	else
		((t++))
	fi
	((a++))
done

echo "Heads wins $h times"
echo "Tails wins $t times"
