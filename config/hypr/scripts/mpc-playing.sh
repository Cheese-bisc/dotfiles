
#!/bin/bash

status=$(mpc status 2>/dev/null | sed -n '2s/.*\[\(.*\)\].*/\1/p')

case "$status" in
    playing)
        mpc --format '  %artist%  -  %title%' current
        ;;
    paused)
        mpc --format '  %artist%  -  %title%' current
        ;;
esac
