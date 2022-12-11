#!/bin/sh
echo " "
echo "See the top 10 blances in terms of number of transactions:"
echo " "

cut -f 5 -d ',' bank_transactions.csv | sort| uniq -c |sort -nr | head

echo " "
echo "The amount men spent:"
grep -i ",M," bank_transactions.csv | awk -F',' '{print $9}' | awk '{s+=$1} END {print s}'

echo " "
echo "The amount women spent:"

grep -i ",F," bank_transactions.csv | awk -F',' '{print $9}' | awk '{s+=$1} END {print s}'


