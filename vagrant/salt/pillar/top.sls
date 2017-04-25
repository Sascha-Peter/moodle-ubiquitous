base:
  '*':
    - base
    - platforms

  'roles:app':
    - match: grain
    - app

  'roles:db-pgsql':
    - match: grain
    - db-pgsql

  'roles:gocd-agent':
    - match: grain
    - gocd

  'roles:gocd-server':
    - match: grain
    - gocd
    - nginx

  'roles:named':
    - match: grain
    - named

  'roles:selenium-.+':
    - match: grain_pcre
    - selenium
