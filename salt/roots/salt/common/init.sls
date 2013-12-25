/etc/yum.repos.d/epel.repo:
  file.managed:
    - source: salt://common/yum.repos.d/epel.repo

/etc/yum.repos.d/sl.repo:
  file.managed:
    - source: salt://common/yum.repos.d/sl.repo

/etc/yum.repos.d/sl6x.repo:
  file.managed:
    - source: salt://common/yum.repos.d/sl6x.repo

/etc/yum.repos.d/sl-other.repo:
  file.managed:
    - source: salt://common/yum.repos.d/sl-other.repo

yum-plugin-fastestmirror:
  pkg:
    - removed

epel-release:
  pkg:
    - installed
