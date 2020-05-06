#!/bin/bash


file="COVID-19-geographic-disbtribution-worldwide-2020-04-12.csv"

IFS=$'\n'


cas=0
det=0
for v in $(cat $file)
do
	#echo $v
	IFS=$','
	for b in $v
	do
		#echo $b
		if [[ $b == Thailand ]]
		then
			count=1
			for n in $v
			do
				if [[ $count == 5 ]]
				then
					#echo $n
					(( cas= $cas + $n ))
				fi
				if [[ $count == 6 ]]
				then
					#echo $n
					(( det= $det + $n ))
				fi	
				(( count++ ))
			done
			#echo $cas
		fi
		
	done
done

echo "Covid-19 in Thailand"
echo "Infected : $cas"
echo "Death : $det"

echo "Percentage of infected people in the entire population : "
printf %.4f\\n "$(( $cas*1000000/69428524*100 ))e-6" 

echo "Percentage of deat per case : "
printf %.4f\\n "$(( $det*10000/$cas*100 ))e-4"



exit 0

