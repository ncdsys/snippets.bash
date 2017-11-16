##############################################################################
#find # list #process #running #executed #target #port.
# list processes running on a given target-port whose protocol is tcp.
# example:
# it would list vy if it were connected to a given host through the port 6667.
# lsof -i tcp:6667

lsof -i <protocol>:<port>

