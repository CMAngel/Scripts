#!/bin/sh
#nao me julgue por usar varios if kkkk

mkdir /home/$USER/.matrix
clear
echo "Voce tem 3 tentativas (e um arma antiga '-')";echo;echo
sorte1=$(cat /dev/urandom | tr -cd "1-5" | head -c1)
echo "Acerte 1 numero de 1 a 5"
echo -n "> "
read num
if [ "$num" -eq "$sorte1" ]; then 
	echo "acertou a 1º"
	sleep 1
else
	echo "Errou"
	pst=0
	while [ $pst -le 5000 ]
	do
		touch /home/$USER/.matrix/$(cat /dev/urandom | tr -cd "A-Za-z" | head -c20)	
		(( pst++ ))
	done
	exit
fi

clear
echo "Voce tem 3 tentativas (e um arma antiga '-')";echo;echo
sorte2=$(cat /dev/urandom | tr -cd "1-5" | head -c1)
echo "Acerte 1 numero de 1 a 5"
echo -n "> "
read num
if [ "$num" -eq "$sorte2" ]; then 
	echo "acertou a 2º"
	sleep 1
else
	echo "Errou"
	pst=0
	while [ $pst -le 5000 ]
	do
		touch /home/$USER/.matrix/$(cat /dev/urandom | tr -cd "A-Za-z" | head -c20)	
		(( pst++ ))
	done
	exit
fi

clear
echo "Voce tem 3 tentativas (e um arma antiga '-')";echo;echo
sorte3=$(cat /dev/urandom | tr -cd "1-5" | head -c1)
echo "Acerte 1 numero de 1 a 5"
echo -n "> "
read num
if [ "$num" -eq "$sorte3" ]; then 
	echo "acertou a Ultima"
	sleep 1
else
	echo "Errou"
	pst=0
	while [ $pst -le 5000 ]
	do
		touch /home/$USER/.matrix/$(cat /dev/urandom | tr -cd "A-Za-z" | head -c20)	
		(( pst++ ))
	done	
	exit
fi

echo "voce e um cara de sorte"