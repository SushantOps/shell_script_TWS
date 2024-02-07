#!/bin/bash

# this syntax is for multicomment
<< desclaimer
This script is for infotainment purpose
desclaimer
# this is function defination
function is_loyal(){
    
read -p "$1 ne mudke kise dekha: " bandi
read -p "$1 ka prem %" prem


if [[ $bandi == "daya bhabhi" ]];
then
        echo "$1 is loyal"
elif [[ $prem -ge 100 ]];
then
        echo "$1 is loyel"
else
        echo "$1 is not loyal"
fi
}

# calling an function
is_loyal "jetha"