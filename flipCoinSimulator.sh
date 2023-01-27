echo "Welcome To Flip Coin Simulation Problem "
read -p "Enter a coin value like 1 or 0 value: " x
if [ $x == $((RANDOM%2)) ]
then
echo "Heads"
else
echo "tails"
fi