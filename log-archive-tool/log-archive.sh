#!/bin/bash

# Get time and date

DATE=$(date +"%Y%m%d")
TIME=$(date +"%H%M%S")

# Verify input from the user
if [[ -z "$1" ]]; then
	echo "Error: Provide a file or folder"
	exit 1
else

	# Perform Compression and Name according to requirement
	error=$(tar --create --gzip --verbose --file "logs_archive_${DATE}_${TIME}.tar.gz" -P $1)
	if [[ $? -ne 0 ]]; then
		echo "Compression Failed with Error: $error"
	fi
fi
