#!/bin/bash

# AUTHER: magcho<mail@magcho.com>
# REPOSITPRY: github.com/magcho/about

# This script is meant for show magcho's self-introduction via:
#  $ curl -Ls about.magcho.com | sh
#
# NOTE: This script has subcommands via:
#  $ curl -Ls about.magcho.com | sh -s (help|more|tw|hp)




Usage(){
    echo  "usage: curl -Ls about.magcho.com | sh
   magcho's self-introduction

   How to execute subcommands
      e.g.) curl -Ls about.magcho.com | sh -s help
   "
}
Help(){
    echo "subcommands:
   help     Display the help message
   more     Display full the magcho's introduction
   tw       Visit to magcho's Twitter
   hp       Visit to magcho.com
   gp       Visit to magcho's GitHub page"
}
Intro(){
    echo  " |        \033[32mName:\033[m magcho                         |
 |     \033[034mTwitter:\033[039m https://twitter.com/magcho0527 |
 |        \033[36mMail:\033[m mail@magcho.com                |
 |          \033[31mHP:\033[m https://magcho.com             |"
}
IntroMore(){

    if echo "$EDITOR" | grep 'emacs' > /dev/null; then
        EDITOR_MESS="     (You'er emacser!! Let's be friends!)    |"
    elif echo "$EDITOR" | grep 'vim' > /dev/null; then
        EDITOR_MESS="   (YOU ARE VIMMER??? SHALL WE USE EMACS?)   |"
    else
        EDITOR_MESS="            (Shall we use Emacs?)            |"
    fi

    echo  " |        Blog: https://blog.magcho.com        |
 |      GitHub: https://github.com/magcho      |
 |        Name: Suetake Dai                    |
 |         Age: 23                             |
 |      Status: student                        |
 |    Keyboard: Lily58                         |
 | Main editor: Emacs                          |
 |$EDITOR_MESS"
}
Open(){
    if [ $1 = tw ]; then
        echo 'open Twitter: https://twitter.com/magcho0527'
        open https://twitter.com/magcho0527
    elif [ $1 = hp ]; then
        echo 'open HP: https://magcho.com'
        open https://magcho.com
    elif [ $1 = gh ]; then
        echo 'open GitHub: https://github.com/magcho/'
        open https://github.com/magcho/
    fi
}
PrintLine(){
    echo " ==============================================="
}



case $1 in
    help)
        Usage
        Help
        ;;
    more)
        Usage
        PrintLine
        Intro
        IntroMore
        PrintLine
        ;;
    tw)
        Open tw
        ;;
    hp)
        Open hp
        ;;
    gh)
        Open gh
        ;;
    *)
        Usage
        PrintLine
        Intro
        PrintLine
        ;;
esac
