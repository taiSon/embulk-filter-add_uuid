require 'securerandom'

module Embulk
  module Filter

    class AddUuid < FilterPlugin
      Plugin.register_filter("add_uuid", self)

      def self.transaction(config, in_schema, &control)
        # configuration code:
        task = {
          "name"   => config.param("name", :string),                  # string, required
          "prefix" => config.param("prefix", :string, default: nil),  # string, optional
          "suffix" => config.param("suffix", :string, default: nil),  # string, optional
        }

        columns = [
          Column.new(nil, task["name"], :string),
        ]

        out_columns = in_schema + columns

        yield(task, out_columns)
      end

      def init
        # initialization code:
        @name = task["name"]
        @prefix = task["prefix"]
        @suffix = task["suffix"]
      end

      def close
      end

      def add(page)
        # filtering code:
        format = "#{@prefix}%s#{@suffix}"
        page.each do |record|
          page_builder.add(record + [sprintf(format, SecureRandom.uuid)])
        end
      end

      def finish
        page_builder.finish
      end
    end
  end
end
