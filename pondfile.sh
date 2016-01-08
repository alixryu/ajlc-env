#!/bin/bash
DOTHOME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
linkables=$( find -H "$DOTHOME" -maxdepth 2 -name "*.link" )

echo -e "\nCreating symbolic links..."
echo "=============================="
for source in $linkables ; do
    target="$HOME/.$( basename $source ".link" )"
    if [ -e $target ]; then
        echo "~${target#$HOME} already exists. Skipping to next file"
    else
        ln -s $source $target
        echo "Created symbolic link for $source"
    fi
done
echo "Symbolic link creation complete"
