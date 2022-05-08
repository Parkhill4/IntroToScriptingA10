#!bin/bash
clear
filename="num.txt"
declare -a array
while read line
do
	array[$i]=$line
	let sum+=$line
	let i++
done < $filename

echo "${array[*]}"

sum=0


summation(){

index=$1
sum=$2

if [ ${#array[*]} -lt 1 ]
then
	return 0
else
	temp1=${array[$index]}
	let sum=sum+temp1
	unset array[index]
	let temp2=index+1
	echo "$sum"
	summation $temp2 $sum
fi
}

summation 0 $sum
echo "The final sum:"
echo "$sum"

