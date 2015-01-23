require 'slop'
require 'fluent-logger'

module ZabbixReceiver
  module Output
    class Fluentd
      def self.add_options(opts)
        opts.string "--fluentd-host", "Hostname of fluentd", default: "localhost"
        opts.integer "--fluentd-port", "Port of fluentd", default: 24224
        opts.string "--fluentd-tag-prefix", "Tag prefix", default: "zabbix"
      end

      def initialize(logger, options)
        @fluentd = Fluent::Logger::FluentLogger.new(
          options[:fluentd_tag_prefix],
          host: options[:fluentd_host],
          port: options[:fluentd_port],
        )
      end

      def receive_sender_data(data)
        @fluentd.post("sender_data", data)
      end
    end
  end
end
