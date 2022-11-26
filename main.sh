clear

typearr=("We're careful about orange ping pong balls because people might think they're fruit." "He used to get confused between soldiers and shoulders, but as a military man, he now soldiers responsibility." "The sky is clear; the stars are twinkling." "25 years later, she still regretted that specific moment." "I cheated while playing the darts tournament by using a longbow." "Patricia found the meaning of life in a bowl of Cheerios." "He had accidentally hacked into his company's server." "The balloons floated away along with all my hopes and dreams." "Sometimes you have to just give up and win by cheating." "You realize you're not alone as you sit in your bedroom massaging your calves after a long day of playing tug-of-war with Grandpa Joe in the hospital." "Shakespeare was a famous 17th-century diesel mechanic." "I was starting to worry that my pet turtle could tell what I was thinking." "I only enjoy window shopping when the windows are transparent." "Toddlers feeding raccoons surprised even the seasoned park ranger." "The mysterious diary records the voice." "Giving directions that the mountains are to the west only works when you can see them." "More RVs were seen in the storage lot than at the campground." "Just go ahead and press that button." "As time wore on, simple dog commands turned into full paragraphs explaining why the dog couldn’t do something." "Nancy thought the best way to create a welcoming home was to line it with barbed wire.")

type=$(printf "%s\n" "${typearr[@]}" | shuf -n1)

tput setaf 7
echo "Welcome to nodetyp! Type in the exact phrase below to win."; echo

tput setaf 39
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
