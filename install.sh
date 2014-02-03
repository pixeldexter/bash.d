#!/bin/bash

function _checkinstall()
{
    if [ -e ~/"$1" ] ; then
	echo "$1 is already there, *NOT* installing."
	return 1
    fi

    ln -vs ".bash.d/$2" ~/"$1"
}

_checkinstall .bashrc rc
_checkinstall .bash_aliases aliases
_checkinstall .bash_completion completion
_checkinstall .bash_env env
