#!/bin/bash

read -p "birds or plants: " filename
if [ $filename = "plants" ]
then
	echo "––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––"
	echo "–––––––––––––––––––––––––––NEW PLANT––––––––––––––––––––––––––"
	echo "––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––"
	read -p "Name: " plantname
	read -p "Environment: " plantenvironment
	read -p "Location(s): " plantlocations
	read -p "Description: " plantdescription
	read -p "Thorns: " plantthorns
	read -p "Poisonous: " plantpoisonous
	read -p "Common Image: " plantimage
	echo "––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––"
	plantoutput="name: ${plantname}\nenvironment: ${plantenvironment}\nlocations: ${plantlocations}\ndescription: ${plantdescription}\nthorns: ${plantthorns}\npoisonous: ${plantpoisonous}\n"
	printf "${plantoutput}"
	echo "- name: ${plantname}" >> "_data/${filename}.yml"
	echo "  environment: ${plantenvironment}" >> "_data/${filename}.yml"
	echo "  locations: ${plantlocations}" >> "_data/${filename}.yml"
	echo "  description: ${plantdescription}" >> "_data/${filename}.yml"
	echo "  thorns: ${plantthorns}" >> "_data/${filename}.yml"
	echo "  poisonous: ${plantpoisonous}" >> "_data/${filename}.yml"
	echo "  image: ${plantimage}" >> "_data/${filename}.yml"
elif [ $filename = "birds" ]
then
	echo "––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––"
	echo "–––––––––––––––––––––––––––NEW BIRD–––––––––––––––––––––––––––"
	echo "––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––"
	read -p "Name: " birdname
	read -p "Location(s): " birdlocations
	read -p "Description: " birddescription
	read -p "Call: " birdcall
	read -p "Special Note or Observation: " birdspecial
	read -p "Quantity seen: " birdquantity
	read -p "Common Image: " birdimage
	echo "––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––"
	birdoutput="name: ${birdname}\nenvironment: ${birdenvironment}\nlocations: ${birdlocations}\ndescription: ${birddescription}\nthorns: ${birdthorns}\npoisonous: ${birdpoisonous}\n"
	printf "${birdoutput}"
	echo "- name: ${birdname}" >> "_data/${filename}.yml"
	echo "  locations: ${birdlocations}" >> "_data/${filename}.yml"
	echo "  description: ${birddescription}" >> "_data/${filename}.yml"
	echo "  call: ${birdcall}" >> "_data/${filename}.yml"
	echo "  special: ${birdspecial}" >> "_data/${filename}.yml"
	echo "  quantity: ${birdquantity}" >> "_data/${filename}.yml"
	echo "  image: ${birdimage}" >> "_data/${filename}.yml"
else
	echo "Input not recognized."
fi