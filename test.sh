echo "Running tests..."
#echo

result=$(./main.out)

# Read the resulting values into an array
readarray -t values <<< "$result"

# Assign each value to a variable
temp1=${values[0]}
temp2=${values[1]}
temp3=${values[2]}

if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

if [ "$temp1" == "99.5" ] ; then
  echo "Pass: 37.5 °C is about $temp1 °F"
else
  echo "Expected 99.5 °F but got $temp1 °F"
  exit 1
fi

if [ "$temp2" == "-40.0" ] ; then
  echo "Pass: -40 °C is the same as $temp2 °F"
else
  echo "Expected -40 °F but got $temp2 °F"
  exit 1
fi

if [ "$temp3" == "212.0" ] ; then
  echo "Pass: 100 °C equals $temp3 °F"
else
  echo "Expected 212.0 °F but got $temp3 °F"
  exit 1
fi

echo
echo "All tests passed."
exit 0
