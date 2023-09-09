#! /bin/bash

# Print environment details
function get-env {
	# populate variables with system/env details
	
	echo -e "\nEnvironment Details"
	echo "  Current User:     $USER" # `users`
 	echo "  Operating System:" `uname -sm`
	echo -e "\n---\n"
	echo -e "  PATH:             $PATH\n"
	echo -e "  MANPATH:          $MANPATH\n"

}

# Detect package managers available to the current user
function detect-pkg {
	managers=("brew","nix","dnf")
	for manager in ${managers[@]}; do
		echo $manager
		location=$(which $manager)
		ret=$?
		if [ ! $ret -eq 0 ]; then
			echo "$manager detected"
		fi
	done
}

function main {
	get-env
	detect-pkg
}

main
