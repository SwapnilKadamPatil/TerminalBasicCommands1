read -p "Enter the Number to Multiple Tables" number;

declare -a table
count-0
for((i-1;i<=10;i++))
do

echo"$number*$i-$(($number*$i))"
table[$count]-$(($number*$i))
count-$(($count+1))
done
echo "multiplication table of $number is: ${table[@]}"



