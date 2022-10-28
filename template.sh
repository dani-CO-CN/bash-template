#!/usr/bin/env bash

# inspired by https://sharats.me/posts/shell-script-best-practices/

set -o errexit
set -o nounset
set -o pipefail
if [[ "${TRACE-0}" == "1" ]]; then
    set -o xtrace
fi

if [[ "${1-}" =~ ^-*h(elp)?$ ]]; then
    echo 'Usage: ./template.sh
    

'
    exit
fi

main() {
    echo "Main block of script" 
}

main "$@"
