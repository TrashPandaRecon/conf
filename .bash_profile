HOST_NAME=Will

shopt -s autocd
shopt -s histappend

export PATH=$PATH:$HOME/bin

export HISTSIZE=5000
export HISTFILESIZE=10000

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

###Cool Shit Section###
emojis=("🍜" "🍝" "🍲" "🍛" "🍣" "🍱" "🍞" "🥐" "🌮" "🥘" "🍙" "🍘" "🍔" "🍟")

EMOJI=${emojis[$RANDOM % ${#emojis[@]} ]}

print_before_prompt () {
	red='\e[0;31m'
	green='\e[0;32m'
	boldpurple='\033[4;35m'
	cyan='\33[0;69m'
	dir=$PWD
	home=$HOME
	dir=${dir/"$HOME"/"~"}
	printf "\n $red%s: $boldpurple%s$cyan %s" "$HOST_NAME" "$dir" "$(vcprompt)"
}

PROMPT_COMMAND=print_before_prompt
PROMPT_COMMAND="history -a;history -c;history -r; $PROMPT_COMMAND"
PS1="$EMOJI >"

pokemon=("Abra" "Aerodactyl" "Alakazam" "Arbok" "Arcanine" "Articuno" "Beedrill" "Bellsprout" "Blastoise" "Bulbasaur" "Butterfree" "Caterpie" "Chansey" "Charizard" "Charmander" "Charmeleon" "Clefable" "Clefairy" "Cloyster" "Cubone" "Dewgong" "Diglett" "Ditto" "Dodrio" "Doduo" "Dragonair" "Dragonite" "Dratini" "Drowzee" "Dugtrio" "Eevee" "Ekans" "Electabuzz" "Electrode" "Exeggcute" "Exeggutor" "Fearow" "Flareon" "Gastly" "Gengar" "Geodude" "Gloom" "Golbat" "Goldeen" "Golduck" "Golem" "Graveler" "Grimer" "Growlithe" "Gyarados" "Haunter" "Hitmonchan" "Hitmonlee" "Horsea" "Hypno" "Ivysaur" "Jigglypuff" "Jolteon" "Jynx" "Kabuto" "Kabutops" "Kadabra" "Kakuna" "Kangaskhan" "Kingler" "Koffing" "Krabby" "Lapras" "Lickitung" "Machamp" "Machoke" "Machop" "Magikarp" "Magmar" "Magnemite" "Magneton" "Mankey" "Marowak" "Meowth" "Metapod" "Mew" "Mewtwo" "Moltres" "Mr. Mime" "Muk" "Nidoking" "Nidoqueen" "Nidoran♀" "Nidoran♂" "Nidorina" "Nidorino" "Ninetales" "Oddish" "Omanyte" "Omastar" "Onix" "Paras" "Parasect" "Persian" "Pidgeot" "Pidgeotto" "Pidgey" "Pikachu" "Pinsir" "Poliwag" "Poliwhirl" "Poliwrath" "Ponyta" "Porygon" "Primeape" "Psyduck" "Raichu" "Rapidash" "Raticate" "Rattata" "Rhydon" "Rhyhorn" "Sandshrew" "Sandslash" "Scyther" "Seadra" "Seaking" "Seel" "Shellder" "Slowbro" "Slowpoke" "Snorlax" "Spearow" "Squirtle" "Starmie" "Staryu" "Tangela" "Tauros" "Tentacool" "Tentacruel" "Vaporeon" "Venomoth" "Venonat" "Venusaur" "Victreebel" "Vileplume" "Voltorb" "Vulpix" "Wartortle" "Weedle" "Weepinbell" "Weezing" "Wigglytuff" "Zapdos" "Zubat")
POKEMON=${pokemon[$RANDOM % ${#pokemon[@]} ]}
pokemon -n $POKEMON
fortune | pokemonsay -p $POKEMON

### End of Cool Shit Section ###

function mkcd()
{
mkdir $1 && cd $1
}

# System Command Aliases
alias l="ls"
alias ll="ls -al"
alias o="open ." # Opens current directory in Finder


#---------------------
export PATH="/usr/local/opt/openjdk/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
