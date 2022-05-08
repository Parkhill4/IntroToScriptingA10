#!bin/bash
clear
i=0
while [ $i -lt 20 ]
do
	num=$(($RANDOM%99))
	array[$i]=$num
	let i++
done

echo "Unsorted: "
echo "${array[*]}"
n=${#array[*]}


sortFunction(){

index=$1

if [ ${#array[*]} -lt 1	]
then
	return 0
else
	for (( i=0; i<$n-1; i++ ))
	do

		if [ ${array[i]} -gt ${array[i+1]} ]
		then
			temp=${array[i]}
			array[i]=${array[i+1]}
			array[i+1]=$temp
		fi
	done
	sortFunction ${array[*]} $n-1
fi
}

sortFunction ${array[@]}
echo "The sorted array"
echo "${array[*]}"
