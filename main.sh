clear

typearr=(" We're careful about orange ping pong balls because people might think they're fruit.
" "He used to get confused between soldiers and shoulders, but as a military man, he now soldiers responsibility.
" "The sky is clear; the stars are twinkling." "25 years later, she still regretted that specific moment." "I cheated while playing the darts tournament by using a longbow.")

type=$(printf "%s\n" "${typearr[@]}" | shuf -n1)

date +%H:%M:%S:%N > /dev/null

read -p "$type"$'\n' typed

if [[ "$typed" == "$type" ]];
then
  echo "Good job!"
  echo -ne "`date +%H:%M:%S:%N`\r"
  sleep 1
else
  echo "Wrong. Try again next time!"
  echo -ne "`date +%H:%M:%S:%N`\r"
  sleep 1
fi
