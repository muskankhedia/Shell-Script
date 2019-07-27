#! /usr/bin/bash

echo "Hello World"

read -p 'username: ' user_var
read -sp 'password: ' pass_var
echo

echo "username : $user_var"

echo "Enter names: "
read -a names 
echo 'Names : '${names[0]}, ${names[1]}

#stores in a default variable reply if any of the variable is not assigned
echo "Enter name: "
read
echo "Name : $REPLY"

#passing arguments in bash script
echo $0 $1 $2 $3 ' > echo $1 $2 $3'
args=("$@")  #stores all the elements of the passed string 
echo ${args[0]} ${args[1]} ${args[2]} #prints the elements at spectified index
echo $@   #prints all the elements of the passed string 
echo $#   #counts the number of elemens passed

# if-else condition
count=10

if [ $count -eq 10 ]
then 
    echo "done"
fi

name="muskan"

if [[ $name == muskan ]]
then 
    echo "done"
fi



