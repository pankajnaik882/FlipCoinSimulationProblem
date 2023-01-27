echo "Welcome To Flip Coin Simulation Problem "

target=21
minimum_difference=2
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

    diff_bt_hc_tc=$(( heads - tails ))
    if(( heads == target && diff_bt_hc_tc >= minimum_difference ))
    then
        echo "Heads won by $diff_bt_hc_tc points"
        break
    elif(( tails == target && ${diff_bt_hc_tc#-} >= minimum_difference ))
    then
         echo "Tails won by ${diff_bt_hc_tc#-} points"
         break
    fi

done
echo "The Heads count is $heads and Tails Count is $tails"
