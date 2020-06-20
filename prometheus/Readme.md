## I WANT TO CONNECT FROM A CONTAINER TO A SERVICE ON THE HOST ##

The host has a changing IP address (or none if you have no network access). 
From 18.03 onwards our recommendation is to connect to the special DNS name 
host.docker.internal, which resolves to the internal IP address used by the host. 
This is for development purpose and will not work in a production environment outside of Docker Desktop for Mac.

The gateway is also reachable as gateway.docker.internal.
