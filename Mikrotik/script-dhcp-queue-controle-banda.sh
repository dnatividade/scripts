# Author: @dnat

#Regra colocada no script de DHCP, para limitar banda (3M upload / 5M download)
if ($leaseBound=1) do={
  /queue simple add max-limit=3M/5M target=$leaseActIP comment=$leaseActMAC
} else={
  /queue simple remove [find comment=$leaseActMAC]
}
