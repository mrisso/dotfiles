if [ $# -ne 1 ]
then
	echo "Uso: sh $0 <c/w>"
		exit

else
	if [ "$1" == "c" ]
	then
		echo "emacs for coding"
		env HOME=$HOME/spacemacs emacs

	elif [ "$1" == "w" ] 
	then
		echo "emacs for writers"
		env HOME=$HOME/emacsForWriters emacs

	else
		echo "Uso: sh $0 <c/w>"
		exit
	fi;
fi;

