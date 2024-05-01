#!/bin/bash

declare -A search_engines

vals="?\\tDuckDuckGo,duckduckgo.com/?q=
g\\tGoogle,google.com/search?q=
d\\tDevDocs,devdocs.io/#q=
en\\tDeepL,deepl.com/translator#fr/en/
fr\\tDeepL,deepl.com/translator#en/fr/
w\\tWordReference,wordreference.com/enfr/"

if [[ "$@" != "" ]]
then
    IFS=' ' read -r alias req <<< "$@"


    while IFS='\\t' read -r key rest; do
        IFS=',' read -r name url <<< "$rest"
        search_engines["$key"]=$url
    done <<< "$vals"

    if [[ ! -z ${search_engines[$alias]} ]]
    then
        if [[ $req != "" ]]
        then
            coproc (  firefox --new-tab "https://${search_engines[$alias]}$req" >/dev/null 2>&1 )
            exit 0
        fi
    fi


    
fi

while IFS=',' read -r key url; do
    search_engines["$key"]=$url
    echo -e ${key}
done <<< "$vals"
