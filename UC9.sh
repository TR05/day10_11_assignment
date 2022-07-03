read -p "Enter first input: " a
read -p "Enter second input: " b
read -p "Enter third input: " c

ruc2=$(($a+$b*$c))
echo "ruc2=" $ruc2

ruc3=$(($a*$b+$c))
echo "ruc3=" $ruc3

ruc4=$(($c+$a/$b))
echo "ruc4=" $ruc4

ruc5=$(($a%$b+$c))
echo "ruc5=" $ruc5

declare -a dict=([ruc2]=$ruc2 [ruc3]=$ruc3 [ruc4]=$ruc4 [ruc5]=$ruc5)
echo "Dictionary:" ${dict[@]}

declare -a uc7array
for i in ${dict[@]}
do
	uc7array+=($i)
done
echo "Array in ascending order:" ${uc7array[@]}

IFS=$'\n'
declare -a decuc7array=($(printf "%s\n" ${uc7array[@]} | sort -nr))
unset IFS

echo "Array in descending order:" ${decuc7array[@]}
