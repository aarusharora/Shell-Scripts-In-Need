# Shell-Scripts-In-Need
Shell Scripts for common use.

Uses and Description of the uploaded scripts - 

# 1) ContinuousNetworkOn.sh - Used to keep Wifi connected.
If you have ever been to those areas where the Wifi signal is poor and you keep disconnecting and connecting the wifi to use the internet, then this script is for you. Or if your wifi NIC card is too bad that it automatically disconnects you from Wifi even when you are sitting next to the Wifi AP(@sachincool - This one's for you, bro), then this script is for you. This script keeps checking(pinging) whether the computer is connected to internet, and if the connection drops, (it checks 5 times to make sure that the connection is really dead) it restarts the NetworkManager service and then sleeps for a few seconds. After you are connected, it keeps checking if the connection drops again. Use Ctrl-C to stop the script. Make changes according to your need. Pull Requests are highly appreciated!
