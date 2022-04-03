#!/bin/bash

printf "Welcome!\n"
printf "\n"
printf "If it's you're first time using RECIPE PRO, please type [i] to continue installing the dedendencies, or cntrl[c] to exit\n"
printf "\n"
# assign choice to variable
read;
CHOICE=${REPLY};

if [ "i" = $CHOICE ];
then
   printf "\n"
   echo ">>> INSTALLING BUNDLER <<<"
   gem install bundler
   echo ">>> INSTALLING DEPENDENCIES <<<"
   bundle install

else
   echo "The option you selected is incorrent. Please Type [i] to continue, or cntrl[c] to exit"
fi
#script to install all bundler gems
printf "\n"
printf ">>> INSTALLATION COMPLETE <<<\n"
printf "\n"
printf "To run RECIPE PRO, please type './run_app.sh' in the command line below. Enjoy!\n"
printf "\n"
