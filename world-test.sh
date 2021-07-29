#!/bin/bash

res="/tmp/$$-result"
ans="/tmp/$$-ans"

./world.sh > $res

echo "hello!" > $ans
echo "world!" >> $ans

diff $ans $res && echo "OK" || echo "NG"

rm $res $ans


