#!/bin/bash

Day()
{
	day=$(date +%d)
	days=$(date +%a)
	moth=$(date +%b)
	year=$(date +%Y)
	echo "$days, $day de $moth"
}

Time()
{
	hour=$(date +%H)
	min=$(date +%M)
	sec=$(date +%S)
	echo "${hour}:${min}"

}

case $1 in
	-d) Day ;;
	-t) Time ;;
esac