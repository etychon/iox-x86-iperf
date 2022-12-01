# iox-x86-iperf

iPerf3 is an application for network performance monitoring, and here it is packaged as a Cisco IOx application for x86-based router platforms such as Cisco IR8x9.

This IOx package is build on top of Alpine Linux, and a shell script to start (and re-start) iPerf3 is listening mode on port TCP 5002.

Feel free to customize as needed.

### How to use

1. Clone the repo:
````sh
git clone git@github.com:etychon/iox-x86-iperf.git
````
2. Build the IOx application:
````sh
cd iox-x86-iperf
sh ./build.sh
````
3. Deploy the generated IOx application (`iox-x86-iperf.tar`) on the gateway using your favorite method. There is ample documentation on the subject so this is will not be covered here.
4. iPerf3 will be listening on port TCP/5002.

### Caveats

Because Cisco routers are highly optimize to _route_ packets, the network throughput measured by an IOx application running _on_ the router is not representative of the actual available thoughtput _through_ the router. This code is only provided as an example, and is not supported nor endorsed by Cisco
