#/bin/bash
##########################################################################################################################################################
#																			 #
#  ██████╗  █████╗ ███████╗██╗  ██╗    ███████╗██╗███╗   ███╗██████╗ ██╗     ███████╗     ██████╗██╗  ██╗ █████╗ ████████╗			         #
#  ██╔══██╗██╔══██╗██╔════╝██║  ██║    ██╔════╝██║████╗ ████║██╔══██╗██║     ██╔════╝    ██╔════╝██║  ██║██╔══██╗╚══██╔══╝		                 #
#  ██████╔╝███████║███████╗███████║    ███████╗██║██╔████╔██║██████╔╝██║     █████╗      ██║     ███████║███████║   ██║				         #
#  ██╔══██╗██╔══██║╚════██║██╔══██║    ╚════██║██║██║╚██╔╝██║██╔═══╝ ██║     ██╔══╝      ██║     ██╔══██║██╔══██║   ██║				         #
#  ██████╔╝██║  ██║███████║██║  ██║    ███████║██║██║ ╚═╝ ██║██║     ███████╗███████╗    ╚██████╗██║  ██║██║  ██║   ██║				         #
#  ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝    ╚══════╝╚═╝╚═╝     ╚═╝╚═╝     ╚══════╝╚══════╝     ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝				         #
#  ██████╗ ██╗   ██╗    ███████╗██████╗ ███████╗██████╗ ██████╗ ██╗███████╗     █████╗ ███╗   ██╗██████╗      █████╗ ███████╗███████╗███████╗███╗   ███╗ #
#  ██╔══██╗╚██╗ ██╔╝    ██╔════╝██╔══██╗██╔════╝██╔══██╗██╔══██╗██║██╔════╝    ██╔══██╗████╗  ██║██╔══██╗    ██╔══██╗██╔════╝██╔════╝██╔════╝████╗ ████║ #
#  ██████╔╝ ╚████╔╝     █████╗  ██████╔╝█████╗  ██║  ██║██║  ██║██║█████╗      ███████║██╔██╗ ██║██║  ██║    ███████║███████╗███████╗█████╗  ██╔████╔██║ #
#  ██╔══██╗  ╚██╔╝      ██╔══╝  ██╔══██╗██╔══╝  ██║  ██║██║  ██║██║██╔══╝      ██╔══██║██║╚██╗██║██║  ██║    ██╔══██║╚════██║╚════██║██╔══╝  ██║╚██╔╝██║ #
#  ██████╔╝   ██║       ██║     ██║  ██║███████╗██████╔╝██████╔╝██║███████╗    ██║  ██║██║ ╚████║██████╔╝    ██║  ██║███████║███████║███████╗██║ ╚═╝ ██║ #
#  ╚═════╝    ╚═╝       ╚═╝     ╚═╝  ╚═╝╚══════╝╚═════╝ ╚═════╝ ╚═╝╚══════╝    ╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝     ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═╝     ╚═╝ #
#						https://github.com/allamoox/BashSimpleChat.git		 	                                         #
##########################################################################################################################################################

printf "\033c"
cat < ./banner
PS3='Hello '$USER' Please chose one of the above options :- '
choice=("Press 1 for nc connection" "Press 2 for /dev/tcp connection" "Press 3 for xxxxx" "Press 4 to Exit")
select choice in "${choice[@]}"
do
    case $choice in
        "Press 1 for nc connection")
	    echo "Listening for incomming connections on port 1337" 
            tmux new \;  split-window\; send-keys C-L C-M "cat R" c-m "nc -l -p 1337" C-M
		#echo `nc -l -p 1337`
            ;;
        "Press 2 for /dev/tcp connection")
            echo ".....Choice2......."
            ;;
        "Press 3 for xxxxx")
	    echo "......Choice3....."
            ;;
        "Press 4 to Exit")
	    echo "GoodBye!"
	    break
	    ;;
        *) echo "$REPLY is not a valid choice, Please choose a number between 1 and 4"
	    ;;
    esac
done
