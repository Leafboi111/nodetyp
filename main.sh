clear

tput setaf 39

typearr=("We're careful about orange ping pong balls because people might think they're fruit.
" "He used to get confused between soldiers and shoulders, but as a military man, he now soldiers responsibility.
" "The sky is clear; the stars are twinkling." "25 years later, she still regretted that specific moment." "I cheated while playing the darts tournament by using a longbow.")

type=$(printf "%s\n" "${typearr[@]}" | shuf -n1)

read -p "$type"$'\n' typed

if [[ "$typed" == "$type" ]];
then
  tput setaf 46
  echo "Good job!"
  echo "Press enter to quit: "
  read delay
else
  tput setaf 196
  echo "Wrong. Try again next time!"
  echo "Press enter to quit: "
  read delay
fi
