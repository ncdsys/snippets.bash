##############################################################################
# iptables

# iptables has four builtin chains.
# filter - the standard one, if not specified this one is used.
# nat    - ...
# mangle - ...
# raw    -

# rules have a criteria and a target.
# whenever a given criteria matches it goes to the target.
# otherwise it goes to the next criteria(the packets and its environment data).


# the possible values that the target can hold.
# ACCEPT – firewall will accept the packet.
# DROP – firewall will drop the packet.
# QUEUE – firewall will pass the packet to the userspace.
# RETURN – firewall will stop executing the next set of rules in the current chain for this packet. The control will be returned to the calling chain.

sudo bash -i

# it shows all available firewall rules on the system.
iptables --list

# it shows all chain rules in the filter table.
iptables -t filter --list

# it shows all the chain rules in the mangle table.
iptables -t mangle --list

# it shows all the chain rules in the nat table.
iptables -t nat --list

# it shows all the chain rules in the raw table.
iptables -t raw --list
##############################################################################
# flush iptables rules, iptables flush rules, unblock extern connections.

# it cleans up all the rules.
sudo bash -i
iptables --flush
exit

##############################################################################
# it permits ssh connections coming from anywhere.
iptables -A INPUT -p tcp -i eth0 --dport 22 -j ACCEPT

# -A INPUT - means incoming traffick. we are adding a rule to this chain.
# we use -i when we use INPUT, it means the input interface.

# it drops all packets in the INPUT chain. it should be the last rule.
iptables -A INPUT -j DROP

# view the current iptables rules.
iptables -L

# it blocks all connections on the port 6667 in the host.
# it means that no one will be able to start a connection
# to an ircserver at the port 6667 in the(server).
iptables -A OUTPUT -p tcp -o eth0 --dport 6667 -j DROP

# it removes the above rule.
iptables -D OUTPUT -p tcp -o eth0 --dport 6667 -j DROP


# it changes the policy of the three chains.
# there are some occasions that it is useful.
iptables -A INPUT DROP
iptables -A OUTPUT DROP
iptables -A FORWARD DROP

iptables -A INPUT ACCEPT
iptables -A OUTPUT ACCEPT
iptables -A FORWARD ACCEPT

# the above example is equivalent to.
iptables -P INPUT DROP
iptables -P OUTPUT DROP
iptables -P FORWARD DROP
iptables --flush

# it allows http connections when the policy is DROP in the three chains.
# the NEW stands for the outgoing connection and ESTABILISHED for the responde
# back.
iptables -A INPUT -p tcp -m multiport --dport 80,443 -m state --state NEW,ESTABLISHED -j ACCEPT
iptables -A OUTPUT -p tcp -m multiport --sport 80,443 -m state --state ESTABLISHED -j ACCEPT

##############################################################################
sudo bash -i
# log extern connections, log connection attempt, log connection.
# the kernel log. iptables output log into this file.
# kernel, log
cat /var/log/kern.log

# it logs every damn tcp incoming connection.
# the logs will be inside /var/log/kern.log with a CONNECTION_ATTEMPT prefix.
iptables -A INPUT -p tcp -j LOG -m state --state NEW --log-prefix 'INPUT_TCP_CONNECTION_ATTEMPT' --log-level 4
iptables --list

# if i add ESTABILISHED it would match every packet.
cat /var/log/kern.log | grep INPUT_TCP_CONNECTION_ATTEMPT

echo '' > /var/log/kern.log

# it deletes the above rule.
iptables -D INPUT -p tcp -j LOG -m state --state NEW --log-prefix 'INPUT_TCP_CONNECTION_ATTEMPT' --log-level 4
iptables --list

exit
##############################################################################
# block external connections, iptables.

sudo bash -i


# Makes it possible to only accept connections from me, it is useful
# to test http servers. --src-range stands for my inet addr
# got with ifconfig.
# this one uses the module iprange.
# this rule has to be added first.
iptables -A INPUT -p tcp -m iprange --src-range 127.0.0.1-127.0.0.1 -j ACCEPT
iptables --list

# accepts only my connection.
# this rule has to be added first.
iptables -A INPUT -p tcp  -s 127.0.0.1 -j ACCEPT
iptables --list


# it blocks new incoming connections.
# the connection attempts would yet appear in the log
# because this is the last rule. but permits localhost to connect.
iptables -A INPUT -p tcp -m state --state NEW -j DROP
iptables -I  INPUT -p tcp  -s 127.0.0.1 -j ACCEPT
iptables --list


# saving iptables rules.
iptables-save > /etc/iptables.conf
cat /etc/iptables.conf

# edit the file.
# add the line.
# iptables-restore < /etc/iptables.conf
# before exit 0.
vy /etc/rc.local

# it is possible use this package too.
# iptables-persistent

# it removes the rule.

iptables -D INPUT -p tcp -m state --state NEW -j DROP
iptables -I  INPUT -p tcp  -s 127.0.0.1 -j ACCEPT
iptables --list

# Now, i no more can connect in the given range.
iptables -D INPUT -p tcp -m iprange --src-range 127.0.0.1-127.0.0.1 -j ACCEPT
iptables --list


# removes the rule.
iptables -D INPUT -p tcp  -s 127.0.0.1 -j ACCEPT

iptables --list
exit

##############################################################################
# prepend a rule to iptables someone can connect on 80.
sudo bash -i

iptables -I  INPUT -p tcp  -s 191.243.122.84 -j ACCEPT
iptables -I  INPUT -p tcp  -s 127.0.0.1 -j ACCEPT
iptables -I  INPUT -p tcp  -s 189.84.255.208 -j ACCEPT
iptables -D  INPUT -p tcp  -s 189.84.255.208 -j ACCEPT
iptables -D  INPUT -p tcp  -s 127.0.0.1 -j ACCEPT
iptables --list
exit
##############################################################################
# list, process, running, executed, target, port.

lsof -i tcp:8080

lsof -i tcp:6667

lsof -i tcp:3001
##############################################################################
# shows all open network connections.
netstat -lp
##############################################################################
# First of all - make sure that your HTTP server is listening on 192.168.50.101:5000 or everywhere (0.0.0.0:5000) by checking the output of:
netstat -tupln | grep ':5000'
iptables -I INPUT -p tcp --dport 5000 -j ACCEPT
iptables -D INPUT -p tcp --dport 5000 -j ACCEPT
sudo bash -i
iptables --list
iptables --flush


#!/bin/bash
IPT=/usr/sbin/iptables

# flush all current rules
$IPT -F
# set default policy on INPUT and OUTPUT chains to DROP packets that dont match the rules
$IPT -P INPUT DROP
$IPT -P OUTPUT DROP
# only accept packets on the INPUT chain that are ESTABLISHED or RELATED to a current connection
$IPT -A INPUT -m state  --state ESTABLISHED,RELATED -j ACCEPT
$IPT -A INPUT -m state  --state ESTABLISHED,RELATED -j ACCEPT

# allow ONLY packets with the following protocols and port numbers to be sent out
$IPT -A OUTPUT -t filter -p tcp --dport http -j ACCEPT
$IPT -A OUTPUT -t filter -p tcp --dport 53 -j ACCEPT
$IPT -A OUTPUT -t filter -p udp --dport 53 -j ACCEPT
$IPT -A OUTPUT -t filter -p tcp --dport https -j ACCEPT
$IPT -A OUTPUT -t filter -p udp --dport https -j ACCEPT

# Allow just local connections.
$IPT -A INPUT -t filter -p tcp -s localhost -j ACCEPT
$IPT -A OUTPUT -t filter -p tcp -s localhost -j ACCEPT

# make it always restored.
iptables-save > /etc/iptables/iptables.rules

cat /etc/iptables/iptables.rules | iptables-restore -c

# there is an iptables service that can be enabled
# it automatically loads the rules from iptables.rules.
cat /usr/lib/systemd/system/iptables.service   
systemctl enable iptables




