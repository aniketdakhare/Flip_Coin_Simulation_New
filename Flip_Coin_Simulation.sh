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
while [ $heads -le 21 -a $tails -le 21 ]
do
	flip
done
if [ $heads -gt $tails ]
then
	echo Heads Win by $(($heads-$tails))
elif [ $tails -gt $heads ]
then
	echo Tails Win by $(($tails-$heads))
else
	echo Its Tie
fi
