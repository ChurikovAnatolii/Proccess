#!/bin/sh



ionice -c2 -n1 bash -c "dd if=/dev/urandom of=ionice-a.log bs=5M count=50 && rm -f ionice-a.log " &

ionice -c3 bash -c "dd if=/dev/urandom of=ionice-b.log bs=5M count=50 && rm -f ionice-b.log " &



