clear

tput setaf 39

typearr=("We're careful about orange ping pong balls because people might think they're fruit.
" "He used to get confused between soldiers and shoulders, but as a military man, he now soldiers responsibility.
" "The sky is clear; the stars are twinkling." "25 years later, she still regretted that specific moment." "I cheated while playing the darts tournament by using a longbow." "Patricia found the meaning of life in a bowl of Cheerios." "He had accidentally hacked into his company's server." "The balloons floated away along with all my hopes and dreams." "Sometimes you have to just give up and win by cheating." "You realize you're not alone as you sit in your bedroom massaging your calves after a long day of playing tug-of-war with Grandpa Joe in the hospital.")

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
