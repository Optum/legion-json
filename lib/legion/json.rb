require 'legion/json/version'
require 'legion/json/parse_error'
require 'legion/json/invalid_json'
require 'json'
require 'multi_json'

module Legion
  module JSON
    def parser
      @parser ||= MultiJson
    end
    module_function :parser

    def load(string, symbolize_keys: true)
      parser.load(string, symbolize_keys: symbolize_keys)
    rescue StandardError => e
      raise Legion::JSON::ParseError.build(e, string)
    end
    module_function :load

    def dump(object, pretty: false)
      parser.dump(object, pretty: pretty)
    end
    module_function :dump
  end
end
