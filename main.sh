#!/bin/bash

main(){
	echo "This is just a test"
    source ArgumentEcho.sh "$*" # need to pass the arguments over

    #allows for multiple  requests to be handled in a single input
    for arg in "$@" #space delimed args
    do 
        CaseToLower=("${arg,,}")
        case "$CaseToLower" in
            "-h" | "help")
            printf "\nYou have asked for help"
            ;;

            "-p" | "ping" | "pingsweep")
            printf "\nYou have asked to perform a ping sweep"
            ;;
        esac
    done

}

main "$@" #must be included to actually call main otherwise nothing will happen