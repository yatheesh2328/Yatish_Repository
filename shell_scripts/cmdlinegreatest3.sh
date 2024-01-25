echo "First arg is : $1"
echo "second arg is : $2"
echo "third arg is : $3"

if [ $1 -gt $2 ] && [ $1 -gt $3 ]
        then
echo "$1 is greater"
elif [ $2 -gt $1 ] && [ $2 -gt $3 ]
then
        echo "$2 is greater"
elif [ $1 -eq $2 ] && [ $2 -eq $1 ] || [ $2 -eq $3 ] && [ $3 -eq $1 ]
then
        echo "all num are equal"
else
        echo "$3 is greater"
fi
