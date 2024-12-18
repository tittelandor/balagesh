#!/bin/bash
# Exit codes:
# 0 - siker
# 1 - hiányzó arg
# 2 - helytelen elnevezés
# 3 - nincs jogosultság

# cli arg?
if [ -z "$1" ]; then
	echo "Nincs arg."
	exit 1
fi

# szabványos elnevezés
if ! git check-ref-format --allow-onelevel "$1"; then
	echo "Nem szabványos elnevezés."
	exit 2
fi

# jogosultság?
if [[ ! -w "$PWD" ]]; then
	echo "Nincs jogosultság."
	exit 3	
fi

git checkout -b "$1"
exit 0
