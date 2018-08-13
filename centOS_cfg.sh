#!/bin/bash

# First, check that the CentOS version is 6.9
centosR=$(rpm --query centos-release)
desR="centos-release-6-9.el6.12.3.i686"
echo "Checking CentOS release..."

if [ $centosR == $desR ]; then
    echo "[OK]"
    continue 
else
    echo "[FAIL]"
    echo "Your CentOS release is: $centosR; it must be: $desR"
    exit 1
fi

# If the release is compliant then create and configure ifcfg-eth0
ethcfg=/etc/sysconfig/network-scripts/ifcfg-eth0
if [ ! -f  $ethcfg ]; then
    echo "DEVICE=eth0" > $ethcfg
    echo "TYPE=Ethernet" > $ethcfg
    echo "ONBOOT=yes" > $ethcfg
    echo "BOOTPROTO=dhcp" > $ethcfg
    echo "IPV4_FAILURE_FATAL=yes" > $ethcfg
else:
    echo "$ethcfg already exists"
    exit 1
fi

# Now, create and cofigure network file
netfile=/etc/sysconfig/network
if [ ! -f $netfile ]; then
    echo "NETWORKING=yes" > $netfile
else:
    echo "$netfile already exists"
    exit 1
fi

# Finally, reboot the system
reboot
