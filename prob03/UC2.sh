declare -a coinarr=(H T)
h=0
t=0
a=0
p=100
while (($a<=5))
do
	x=$(($RANDOM%2))
	if [ $x -eq 1 ]
	then

		coinarr+=(${coinarr[0]})
		h=$(($h+1))
	else

		coinarr+=(${coinarr[1]})
		t=$(($t+1))
	fi

	((a++))
done

echo "Singlet Combination Array:" ${coinarr[@]}

Headsper=`echo $h ${#coinarr[@]} | awk '{print $1/$2}'`
hp=`echo $Headsper $p | awk '{print $1*$2}'`
echo "Percentage of Heads:" $hp

Tailsper=`echo $t ${#coinarr[@]} | awk '{print $1/$2}'`
tp=`echo $Tailsper $p | awk '{print $1*$2}'`
echo "Percentage of Tails:" $tp
