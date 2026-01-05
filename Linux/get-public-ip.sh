#!/bin/bash
# Author: @dnat

#first of all, install curl: apt-get install curl
curl ifconfig.me/all | grep "ip_addr" | cut -d" " -f2

exit 0
