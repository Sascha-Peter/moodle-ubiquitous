redis:
  config:
    daemonize: "yes"
    pidfile: /var/run/redis/redis-server.pid
    port: 6379
    tcp-backlog: 511
    bind: 0.0.0.0
    timeout: 0
    tcp-keepalive: 0
    loglevel: notice
    logfile: /var/log/redis/redis-server.log
    databases: 1
    save_900: 900 1
    save_300: 300 10
    save_60: 60 10000
    stop-writes-on-bgsave-error: "yes"
    rdbcompression: "yes"
    rdbchecksum: "yes"
    dbfilename: redis-dump.rdb
    dir: /var/lib/redis
    slave-serve-stale-data: "yes"
    slave-read-only: "yes"
    repl-diskless-sync: "no"
    repl-diskless-sync-delay: 5
    repl-disable-tcp-nodelay: "no"
    slave-priority: 100
    appendonly: "no"
    appendfilename: "appendonly.aof"
    appendfsync: everysec
    no-appendfsync-on-rewrite: "no"
    auto-aof-rewrite-percentage: 100
    auto-aof-rewrite-min-size: 64mb
    aof-load-truncated: "yes"
    lua-time-limit: 5000
    slowlog-log-slower-than: 10000
    slowlog-max-len: 128
    latency-monitor-threshold: 0
    notify-keyspace-events: ""
    hash-max-ziplist-entries: 512
    hash-max-ziplist-value: 64
    list-max-ziplist-entries: 512
    list-max-ziplist-value: 64
    set-max-intset-entries: 512
    zset-max-ziplist-entries: 128
    zset-max-ziplist-value: 64
    hll-sparse-max-bytes: 3000
    activerehashing: "yes"
    client-output-buffer-limit-normal: normal 0 0 0
    client-output-buffer-limit-slave: slave 256mb 64mb 60
    client-output-buffer-limit-pubsub: pubsub 32mb 8mb 60
    hz: 10
    aof-rewrite-incremental-fsync: "yes"
