#!/bin/bash

# AUTHER: magcho<mail@magcho.com>
# REPOSITPRY: github.com/magcho/about

# This script is meant for show magcho's self-introduction via:
#  $ curl -Ls about.magcho.com | sh
#
# NOTE: This script has subcommands via:
#  $ curl -Ls about.magcho.com | sh -s (help|more|tw|hp)




Usage(){
echo -e "usage: curl -Ls about.magcho.com | sh
   magcho's self-introduction

   How to execute subcommands
      Ex.) curl -Ls about.magcho.com | sh -s help
   "
}
Help(){
echo "subcommands:
   help     Display the help message
   more     Display full the magcho's introduction
   tw       Visit to magcho's twitter
   hp       Visit to magcho.com"
}

Intro(){
echo  -e " |        \033[32mName:\033[m magcho                         |
 |     \033[034mTwitter:\033[039m https://twitter.com/magcho0527 |
 |        \033[36mMail:\033[m mail@magcho.com                |
 |          \033[31mHP:\033[m https://magcho.com             |"
}
IntroMore(){

if [[ $EDITOR =~ emacs ]] ;then
   EDITOR_MESS="     (You'er emacser!! Let's be friends!)    |"
elif [[ $EDITOR =~ vim ]] ;then 
   EDITOR_MESS="   (YOU ARE VIMMER??? SHALL WE USE EMACS?)   |"
else
   EDITOR_MESS="            (Shall we use Emacs?)            |"
fi

echo  " |        Blog: https://blog.magcho.com        |
 |      Github: https://github.com/magcho      |
 |         Age: 20                             |
 |      Status: student                        |
 |    Keyboard: Lily58                         |
 | Main editor: Emacs                          |
 |$EDITOR_MESS"
}

Open(){
   if [ $1 = tw ]; then
      open https://twitter.com/magcho0527
   elif [ $1 = hp ]; then
      open https://magcho.com
   fi
}
PrintLine(){
   echo " ==============================================="
}



subcommand="$1"
shift
case $subcommand in
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
   *)
      Usage
      PrintLine
      Intro
      PrintLine
      ;;
esac
