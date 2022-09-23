#!/bin/bash
TOOL="$1"

if [ -z "$TOOL" ]; then
	echo "tool not specified!"
	echo "must be one of the following:"
	echo " * ecpbram"
	echo " * ecppack"
	echo " * ecppll"
	echo " * ecpunpack"
	echo " * ecpmulti"
	exit
fi

shift

case $TOOL in
	ecppll)
		/app/bin/ecppll $@
		;;
	ecppack)
		/app/bin/ecppack $@
		;;
	ecpunpack)
		/app/bin/ecpunpack $@
		;;
	ecpbram)
		/app/bin/ecpbram $@
		;;
	ecpmulti)
		/app/bin/ecpmulti $@
		;;
esac
