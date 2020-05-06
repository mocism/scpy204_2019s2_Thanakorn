#!/bin/bash


clear

echo -e "Hello, this is COVID_19 checking program.\nPlease enter your informations."

echo -n "First name:"
read fname
while [[ "$fname" =~ ^[0-9]+$ ]]
do
     echo -n "Sorry please enter your first name:"
     read fname
done
echo -n "Last name:"
read lname
while [[ "$lname" =~ ^[0-9]+$ ]]
do
     echo -n "Sorry please enter DAY:"
     read lame
done
echo "Birth date"
echo -n "day:"
read day
while ! [[ "$day" =~ ^[0-9]+$ ]]
do
     echo -n "Sorry please enter DAY:"
     read day
done
while  [ "$day" -gt 31 ] || [ "$day" -lt 1 ]
do
     echo -n "Sorry please enter DAY:"
     read day
done

echo -n "mounth:"
read mou
while ! [[ "$mou" =~ ^[0-9]+$ ]]
do
     echo -n "Sorry please enter MOUNTH:"
     read mou
done
while  [ "$mou" -gt 12 ] || [ "$mou" -lt 1 ]
do
        echo -n "Sorry please enter MOUNTH:"
        read mou
done


echo -n "year BC:"
read year
while ! [[ "$year" =~ ^[0-9]+$ ]]
do
     echo -n "Sorry please enter YEAR:"                                                                       
     read year
done
while  [ "$year" -gt 2015 ] || [ "$year" -lt 1900 ]
do
        echo -n "Sorry please enter YEAR:"
        read year
done


echo -n "Height (cm):"
read height
while ! [[ "$height" =~ ^[0-9]+$ ]]
do
        echo -n "INTEGER ONLY:"
        read height
done

echo -n "Weight (kg):"
read weight
while ! [[ "$weight" =~ ^[0-9]+$ ]]
do
        echo -n "INTEGER ONLY:"
        read weight
done
echo -n -e "Gender\n1.Male \n2.Female \n:"
read gender
while  [ "$gender" -gt 2 ] || [ "$gender" -lt 1  ]
do
        echo -n "Please choose 1 or 2 :"
        read gender
done
echo -n "Address (Province):"
read add
echo -n "Phone number(optional):"
read phone
echo -n "E-mail (optional):"
read email


echo -e "\n\n\n\nPlese type the number of these country if you have been in last 14 days."
echo -e "1. USA \t\t\t2. Spain \t\t\t3. Italy \t\t\t4. Germany \n5. France \t\t6. Chaina \t\t\t7. Iran \t\t\t8. UK"
echo -e "9. Turkey \t\t10. Switzerland \t\t11. Belgium \t\t\t12. Netherlands \n13. Canada \t\t14. Austria \t\t\t15. Portugal \t\t\t16. Brazil "
echo -e "17. South Koria \t18. Israel \t\t\t19. Sweden \t\t\t20. Australia \n0. I hvae not been to these country"
echo -n ":"
read been
while ! [[ "$been" =~ ^[0-9]+$ ]]
do
     echo -n "please choose 0-20:"
     read been
done
while  [ "$been" -gt 20 ] || [ "$been" -lt 0 ]
do
        echo -n "please choose 0-20:"
        read been
done                                                                                                                                                                                                                                                                                                                            echo -e "Do you have a cough? \n1. Yes. 0. No."

echo -e "Do you have a cough? \n1. Yes. 0. No."
echo -n ":"
read caugh
while ! [[ "$caugh" =~ ^[0-9]+$ ]]
do
        echo -n "please choose 0 or 1:"
        read caugh
done
while [ "$caugh" -gt 1 ] || [ "$caugh" -lt 0 ]
do
        echo -n "please choose 0 of 1:"
        read caugh
done

echo -e "Do you have a fever? \n1. Yes. 0. No."
echo -n ":"
read fever
while ! [[ "$fever" =~ ^[0-9]+$ ]]
do
        echo -n "please choose 0 of 1:"
        read fever
done
while [ "$fever" -gt 1 ] || [ "$fever" -lt 0 ]
do
        echo -n "please choose 0 of 1:"
        read fever
done


echo -e "Do you feel tired? \n1. Yes. 0. No."
echo -n ":"
read tired
while ! [[ "$tired" =~ ^[0-9]+$ ]]
do
        echo -n "please choose 0 of 1:"
        read tired
done
while [ "$tired" -gt 1 ] || [ "$tired" -lt 0 ]
do
        echo -n "please choose 0 of 1:"
        read tired
done                                                          

echo -e "Do you feel difficult to breathe? \n1. Yes. 0. No."
echo -n ":"
read breathe
while ! [[ "$breathe" =~ ^[0-9]+$ ]]
do
        echo -n "please choose 0 of 1:"
        read breathe
done
while [ "$breathe" -gt 1 ] || [ "$breathe" -lt 0 ]
do
        echo -n "please choose 0 of 1:"
        read breathe
done

echo -e "Patient info: \nName: $fname $lname \nBorn: $day/$mou/$year \nGender: $gender Height: $height Weight: $weight"
echo -e "YOUR RESULT"
if [ $been -gt 0 ]
then
        echo "You should go to test COVID-19 because you came form risk area."
fi
x=$(( $breathe+$tired+$fever+$caugh ))
if [ $x -gt 2 ]
then                                                                                                                                                                    echo "You should go to see the doctor"
fi
if [ $x -lt 3 ] || [ $been -eq 0 ]
then
        echo "You are free from COVID-19"
        echo "but to not underestimate, you should take care of your self"
fi

exit 0

