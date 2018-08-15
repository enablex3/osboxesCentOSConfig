## osboxesCentOSConfig
## Version 1.0
## COPYRIGHT Aug 2018
## LICENSE BSD 2-Clause License
## Release Date: 12 Aug 2018
-----------------------------------------
Summary:
This software is meant for CentOS 6.9 VM from: osboxes.org/centos/
Currently, this VM does not contain the proper config files for networking capabilities.
The files missing are /etc/sysconfig/network-scripts/ifcfg-eth0 and /etc/sysconfig/network.
The lack of the existence and proper configuration of these files will not allow for the VM to 
reach out to the network or have Internet access.

Instructions:
1. Download the osboxesCentOSConfig package
2. Unzip osboxesCentOSConfig.zip
3. Open terminal and do:
    a. "su" # Default osboxes root password is: osboxes.org
    b. "chmod +x /path/to/centOS_cfg.sh"
    c. "./centOS_cfg.sh"
4. Once the script has run then your system will reboot
5. Upon reboot do:
    a. "su"
    b. "ifconfig"
6. Make sure that "eth0" has become a networking device
   a. Test networking by pinging the host machine.
   b. Test Internet by opening Firefox or "wget [some_url]" ==> You should see a "200 Ok" 
      response.

** So far this works for Bridged Networking on VMware Workstation

Help:
For any questions please contact Elijah Reyes <ereyes@citadel.edu>
