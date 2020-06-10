#!/bin/bash 
diff <( curl -Ls about.magcho.com | sh ) ./success_output.txt

if [[ $? == 0 ]]; then
		exit 0
else
		exit 1	 
fi
