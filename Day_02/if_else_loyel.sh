#!/bin/bash

# this syntax is for multicomment
<< desclaimer
This script is for infotainment purpose
desclaimer

read -p "Jetha ne mudke kise dekha: " bandi
read -p "jetha ka prem %" prem

if [[ $bandi == "daya bhabhi" ]];
then
        echo "jetha is loyal"
elif [[ $prem -ge 100 ]];
then
        echo "jetha is loyel"
else
        echo "jetha is not loyal"
fi
