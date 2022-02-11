
   
#!/bin/bash

if [ $# -eq 0 ]; then
    b=10
    a=0
    while [ $a -lt $b ]; do 
        RANDOM=$$
        for i in `seq $b`; do
            echo "$a, $RANDOM"
            a=`expr $a + 1`
        done
    done
else
    a=0
    while [ $a -lt $1 ]; do 
        RANDOM=$$
        for i in `seq $1`; do
            echo "$a, $RANDOM"
            a=`expr $a + 1`
        done
    done
fi