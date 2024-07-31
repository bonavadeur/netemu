#!/bin/bash

pid=($(ps aux | grep python3 | grep netem | awk '{print $2}'))
for i in "${!pid[@]}"
do 
  kill -9 "${pid[$i]}"
done

interface=vnet2
tc qdisc del dev $interface root

interface=vnet0
tc qdisc del dev $interface root

interface=vnet1
tc qdisc del dev $interface root





# old
# interface=vnet2
# tc qdisc del dev $interface root handle 1: prio

# interface=vnet0
# tc qdisc del dev $interface root handle 1: prio

# interface=vnet1
# tc qdisc del dev $interface root handle 1: prio
