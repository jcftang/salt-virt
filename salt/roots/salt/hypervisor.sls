libvirt:
  pkg:
    - installed
  file:
    - managed
    - name: /etc/sysconfig/libvirtd
    - contents: 'LIBVIRTD_ARGS="--listen"'
    - require:
      - pkg: libvirt
  libvirt:
    - keys
    - require:
      - pkg: libvirt
  service:
    - running
    - name: libvirtd
    - require:
      - pkg: libvirt
      - network: br0
      - libvirt: libvirt
    - watch:
      - file: libvirt

libvirt-python:
  pkg:
    - installed

libguestfs:
  pkg:
    - installed
    - pkgs:
      - libguestfs
      - libguestfs-tools
