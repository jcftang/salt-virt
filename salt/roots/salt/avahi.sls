avahi:
  pkg:
    - installed

avahi-daemon:
  service:
    - running
    - require:
      - pkg: avahi
      - pkg: nss-mdns
      - service: messagebus

dbus:
  pkg:
    - installed

messagebus:
  service:
    - running
    - require:
      - pkg: dbus 

avahi-dnsconfd:
  pkg:
    - installed
  service:
    - running
    - require:
      - pkg: avahi-dnsconfd

nss-mdns:
  pkg:
    - installed
