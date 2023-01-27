echo "Welcome To Flip Coin Simulation Problem "

target=21
heads=0
tails=0
flips=0
while(( 1 ))
do
    (( flips_count++ ))
    echo -n "Flip-$flips is "
    toss=$(( RANDOM % 2 ))
    if(( toss == 0 ))
    then
        echo "Heads"
        (( heads++ ))
    else
        echo "Tails"
        (( tails++ ))
    fi
    if(( heads == target || tails == target ))
    then
        break
    fi
done
echo "The Heads count is $heads and Tails Count is $tails"
if(( heads > tails ))
then
    echo "Heads won by $(( heads - tails ))"
elif(( tails > heads ))
then
    echo "Tails won by $(( tails - heads ))"
else
    echo "Its tie"
fi
