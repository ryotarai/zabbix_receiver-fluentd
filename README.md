# zabbix_receiver-fluentd

## Installation

```ruby
gem install zabbix_receiver-fluentd
```

## Usage

```
$ zabbix_receiver fluentd --help
Using fluentd output.
usage: zabbix_receiver [options]
    --help
    --daemonize
    --log
    --pid-path
    --workers
    --bind
    --port
    --proxy-to-host
    --proxy-to-port
    --log-level
    --fluentd-host        Hostname of fluentd
    --fluentd-port        Port of fluentd
    --fluentd-tag-prefix  Tag prefix
$ zabbix_receiver fluentd
I, [2015-01-23T15:33:50.703189 #89821]  INFO -- : Listening on 0.0.0.0:10051...
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/zabbix_receiver-fluentd/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
