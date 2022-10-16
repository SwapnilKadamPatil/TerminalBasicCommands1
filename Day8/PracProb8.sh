#!/bin/bash -x
for request in $* ; do
  dice=$(echo $request | cut -dd -f1)
  sides=$(echo $request | cut -dd -f2)
  echo "Rolling $dice $sides-sided dice"
  sum=0  # reset
  while [ ${dice:=1} -gt 0 ] ; do
    rolldie die $sides
    echo "     dice roll = $die"
    sum=$(( $sum + $die ))
    dice=$(( $dice - 1 ))
  done
  echo "  sum total = $sum"
done
