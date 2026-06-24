
#!/bin/bash

# This is while loop


i=0

while [[ $i -le 5 ]]
do 
	echo "HEYYYY"
	i=$i+1
done



num=0
while [[ $((num % 2 )) == 0 && $num -le 10 ]]
do 
	echo $num
	num=$((num+1))
done`
