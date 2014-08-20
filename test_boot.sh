#!/bin/bash
PARENT_COMMAND=$(/bin/ps $PPID | tail -n 1)
echo $PARENT_COMMAND >> ~/the_parent
echo '----------' >> ~/the_parent
echo 'ALL processes' >> ~/the_parent
/bin/ps -ef >> ~/the_parent
