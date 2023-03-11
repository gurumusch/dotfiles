#!/usr/bin/env sh

if [[ $# -eq 1 && $1 = "arch" ]]; then
	cwd=`pwd`
	scripts=`ls ${cwd}/bin/sync/`
	for script in $scripts
	do
		echo "Executing $script"
		$cwd/bin/sync/$script
	done
fi
