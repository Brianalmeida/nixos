{ config, pkgs, ... }:

{
  networking.wg-quick.interfaces = {
    wg0 = {
      address = [ "<x.x.x.x/subnet>" "<IPv6 address/subnet>" ];
      dns = [ "<x.x.x.x>" ];
      # listenPort = <port>;
      privateKeyFile = "./wireguard/<privatekey>";
      configFile = "/etc/wireguard/<config-file>.conf";

      peers = [
        {
          publicKey = "<Public Key Goes Here>";
          presharedKeyFile = "./wireguard/<public-sharedkey>";
          # Adding IPv4 and IPv6 allowed IPs
          allowedIPs = [ "0.0.0.0/0" "::/0" ];
          endpoint = "<Server ip or hostname>:<port>";
          persistentKeepalive = 25;
        }
      ];
    };
  };
}
