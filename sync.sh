#!/usr/bin/env sh

if [[ $# -eq 1 && $1 = "arch" ]]; then
	cwd=`pwd`
	scripts=`ls ${cwd}/bin/sync/`
	for script in $scripts
	do
		echo "Executing $script"
		prefix="[$(echo "${script}" | head -c2)]   "
		$cwd/bin/sync/$script 2>&1 | sed "s/^/${prefix}/"
	done
fi
