# share wifi using create_app with previous firewall rules
# on ports.

# allow the devices connected to the wifi
# to create/receive connections even though
# they arent delivered to the computer
# that is sharing the connection.
iptables -I INPUT -d 192.168.12.0/24 -j ACCEPT
iptables -I OUTPUT -s 192.168.12.0/24 -j ACCEPT

create_ap wlp1s0 enp2s0 vaitomarnocu vaitomarnocu 




