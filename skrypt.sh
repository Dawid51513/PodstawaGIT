#!/bin/bash
function data {
 date +"%d-%m-%Y"
}


if [ "$1" = "--date" ]; then
echo $(data)
fi
