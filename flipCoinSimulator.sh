a=1
n=40
heads=0
tails=0
function coinsimulation(){

        coin=$((RANDOM%2))
        if(($coin==1))
        then
                echo "Heads Won"
                heads=$(($heads+1))
        else echo "Tails Won"
                tails=$(($tails+1))
        fi

}
while(($a<=$n))
do
        coinsimulation
	if(($heads==21 || $tails==21))
        then break
	fi
	a=$(($a+1))
done
echo
echo "Heads won $heads times"
echo "Tails won $tails times"
echo
if(($heads==$tails))
then
	echo "It's a tie between Heads and Tails"
	echo
	echo "Coin filpping until Diffrence of minimum 2 point achieved"
        echo
	while((($heads-$tails)!=2 && ($tails-$heads)!=2))
        do
                coinsimulation
	done
fi
echo
if(($heads>$tails))
then echo "Heads wons by $(($heads-$tails)) times more than Tails"
elif(($tails>$heads))
then echo "Tails wons by $(($tails-$heads)) times more than Heads"
fi
