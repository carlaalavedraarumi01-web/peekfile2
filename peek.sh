lines=$(cat $1 | wc -l)
if [[ $lines -le $((2*$2)) ]]
then cat $1
else echo Warning meassage: $1 has more than $((2*$2)) lines; head -n $2 $1; echo ...; tail -n $2 $1; 
fi 
