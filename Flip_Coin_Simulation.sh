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
for ((i=1; i<=20; i++))
do
	flip
done
echo heads won $heads times
echo Tails won $tails times
