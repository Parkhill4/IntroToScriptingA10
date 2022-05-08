#!bin/bash
#Question 2-3

function fib(){
	num=$1
	if [ $1 -le 0 ]
       	then 
		echo 0
	elif [ $1 -eq 1 ]
	then
		echo 1
	else
		let temp1=num-1
		let temp2=num-2
		echo $(( $(fib $temp1) + $(fib $temp2) ))
	fi
}

echo "Enter the number to find it's fibonacci series: "
read user
echo "The fibonacci series: "


filename="Fib.txt"
for ((i = 1; i <= $user; i++))
do
	fib $i
done < $filename
echo >> $filename
