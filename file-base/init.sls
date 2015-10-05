#
# The Perfect Cluster: Moodle
#
# @author Luke Carrier <luke.carrier@floream.com>
# @copyright 2015 Floream Limited
#

#
# EPEL release
#

epel-release:
  pkg.installed:
    - allow_updates: True
    - sources:
      - epel-release: https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

#
# Ceph
#

/etc/yum.repos.d/ceph.repo:
  file.managed:
    - source: salt://file-base/repos/ceph.repo
    - user: root
    - group: root
    - mode: 0644

ceph:
  pkg.installed:
    - require:
      - pkg: epel-release
      - file: /etc/yum.repos.d/ceph.repo
