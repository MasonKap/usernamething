#! /bin/bash
# username-input.sh
# author
echo "Enter a username(composed of lower case letters, digits, and underscores): "
read username
while echo "$username" | egrep -E -v "^[0-9]|[a-z]|[_]{12}$" > /dev/null 2>&1
do
	echo "You must enter a valid username!"
	echo "Enter a username(composed of lower case letters, digits, and underscores): "
	read username
done
echo "Thank you"
