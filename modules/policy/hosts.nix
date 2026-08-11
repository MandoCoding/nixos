{ config, ... }:
{
# temporary host changes for HTB challenges
networking.extraHosts =
  ''
    10.129.85.246 orion.htb
  '';
  }