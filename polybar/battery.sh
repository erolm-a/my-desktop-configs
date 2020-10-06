#!/bin/bash

# do an average of the batteries

CAPACITY_SUM=0
WEIGHTED_SUM=0

for bat in /sys/class/power_supply/BAT*
do
    bat_capacity=$(cat $bat/energy_now)
    bat_full_capacity=$(cat $bat/energy_full)
    let CAPACITY_SUM=$CAPACITY_SUM+$bat_full_capacity
    let WEIGHTED_SUM=$WEIGHTED_SUM+$bat_capacity
done

expr $WEIGHTED_SUM \* 100 / $CAPACITY_SUM
