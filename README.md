# H-Tor

Safe Tor Connection With Docker and KVM

Requirements:
- Docker
- Docker custom Network
- KVM ( recommended )

The problem with running a ToR VM or tor browser is that there is a risk the OS will make direct connections and expose your real IP. You cannot remove the default route because the ToR service relays on this. Firewalling will be nearly impossible or a hell of a task.

This project is to make sure everything you do in a OS(VM) is isolated from the network and public connection you are on.

This will spin-up a docker container which will connect to the ToR network over port 80 and 443.
Will not be noticed as ToR traffic on Firewalls. And it will only allow proxy connections from the connected custom (docker) network.

The best way to use this setup is by running either a live distro or install an OS in kvm, with no internet connection/gateway configured. ( net install images can make use of the ToR client while installing if you really want to be "off radar" )

I would advice to download a minimal install iso, install this in KVM without a gateway set. In firefox enable proxy dns resolving, and point to the ToR proxy container.
And (after installing manually the tor client) you can enable the torsocks proxy or torify everycommand within this OS.

Because we have no gateway set on the VM, nothing can make a direct connection to the outside world. It's either the onion way or no way out to the internet.

If you went so far to encrypt your traffic, I would advice to install a VM with encrypted volumes :D
