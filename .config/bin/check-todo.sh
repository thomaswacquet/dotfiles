#!/bin/bash

[[ $(cat ~/Documents/TODO | grep -c '\[') -ne 0 ]] && (echo  $(cat ~/Documents/TODO | grep -c '\[x')/$(cat ~/Documents/TODO | grep -c '\[')) || echo ""
