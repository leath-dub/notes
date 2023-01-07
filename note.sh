#!/bin/sh

# read input -- a new note name
printf "new note: "
read new_note

# create file name for new note
current_date=$(date -I)
new_note="${current_date}-${new_note}.md"

nvim - +"file _posts/$new_note | 4j | startinsert!" <<EOF
---
layout: post
author: Cathal O'Grady
tag: 

---
EOF

handle_response() {
    case $1 in
        N|n) return 1 ;;
        *) return 0 ;;
    esac
}

[ -f "_posts/$new_note" ] && {
    echo "new note created, $new_note."
    printf "commit & push [Y/n]: "
    read response
    handle_response $response && {
        git add $new_note
        git commit -a && git push
    }
}

return 0
