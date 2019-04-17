#!/usr/bin/env sh

if [[ $# -eq 1 && $1 = "manjaro" ]]; then
	cwd=`pwd`
	scripts=`ls ${cwd}/install/`
	for script in $scripts
	do
		echo $script
		$cwd/install/$script
	done
fi
