#!/bin/bash

[[ $(cat ~/notes.md) != "" ]] && echo "  "$(cat ~/notes.md | head -n 1)" "