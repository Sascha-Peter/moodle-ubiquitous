#
# Ubiquitous Moodle
#
# @author Luke Carrier <luke.carrier@floream.com>
# @copyright 2015 Floream Limited
#

base:
  '*':
    - base

  'app-*':
    - app
  'db-*':
    - db

  'file-*':
    - file-base
  'file-mon-*':
    - file-mon
  'file-osd-*':
    - file-osd

  'salt':
    - salt

  'app-debug-*':
    - app
    - app-debug
  'mail-debug':
    - mail-debug

  'selenium-*':
    - selenium-base
  'selenium-hub':
    - selenium-hub
  'selenium-node-*':
    - selenium-node-base
  'selenium-node-chrome':
    - selenium-node-chrome
  'selenium-node-firefox':
    - selenium-node-firefox
