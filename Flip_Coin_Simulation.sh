#!/bin/bash -x

echo Welcome To Flip Coin Simulation

heads=0
tails=0
function flip()
{

	coin=$((RANDOM%2))
	if [ $coin -eq 0 ]
	then
		((heads++))
	else
		((tails++))
	fi
}
while [ $heads -lt 21 -a $tails -lt 21 ]
do
	flip
done
num=1
function check()
{
	echo heads won $heads times
	echo Tails won $tails times
	if [ $heads -gt $tails ]
	then
		echo Heads Win by $(($heads-$tails))
	elif [ $tails -gt $heads ]
	then
		echo Tails Win by $(($tails-$heads))
	else
		echo Its Tie
		((num++))
	fi
}
check
if [ $num == 2 ]
then
	heads=1
	tails=1
	while [ $(($heads-$tails)) -ne 2 -a $(($tails-$heads)) -ne 2 ]
	do
		flip
	done
	check
fi
