#!/bin/bash

if [ -z ${MYHOME} ]; then
  export MYHOME=$HOME
else
  export MYHOME=$MYHOME
fi
echo "Copying bashrcs to ${MYHOME}"

if grep "MYHOME" ~/.bashrc
then
    echo "bashrc already has MYHOME"
else
  echo "# My bashrc" >> ${MYHOME}/.bashrc
  echo "export MYHOME=$MYHOME" >> ${MYHOME}/.bashrc
fi

if grep "bashrc-extra" ~/.bashrc
then
  echo "bashrc already has bashrc-extra"
else
  echo "source ${MYHOME}/.bashrc-extra" >> ${MYHOME}/.bashrc
fi

cp ./bashrc/bashrc-extra  ${MYHOME}/.bashrc-extra
cp ./bashrc/bashrc-aliases ${MYHOME}/.bashrc-aliases
cp ./bashrc/bashrc-additional ${MYHOME}/.bashrc-additional
cp ./bashrc/bashrc-additional-work ${MYHOME}/.bashrc-additional-work
