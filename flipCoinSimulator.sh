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
	a=$(($a+1))
done
echo "Heads won $heads times"
echo "Tails won $tails times"
