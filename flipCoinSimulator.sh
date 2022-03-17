coin=$((RANDOM%2))
echo "Coin Flipping ...."
if(($coin==1))
then
	echo "Heads Won"
        heads=$(($heads+1))
else
	echo "Tails Won"
        tails=$(($tails+1))
fi
