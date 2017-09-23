# ubuntu-nettools
a net tools image base on ubuntu 
if you want run tcpdump in docker ,please add cap-add , eg.
 docker run --rm -it --net=host --cap-add net_admin robertxie/ubuntu-nettools
 
don't add privileged ,it not work. 
