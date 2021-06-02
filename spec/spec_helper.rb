begin
  require 'simplecov'

  SimpleCov.profiles.define 'legion-json' do
    add_filter '/spec/'
    add_filter '/config/'
    add_filter '/tmp/'
  end

  SimpleCov.start do
    formatter SimpleCov::Formatter::SimpleFormatter if ENV.key? 'SONAR_TOKEN'
  end
  SimpleCov.use_merging(true)
  SimpleCov.minimum_coverage 95 unless ENV.key? 'SONAR_TOKEN'
rescue LoadError
  puts 'Failed to load file for coverage reports, continuing without it'
end

require 'bundler/setup'
require 'legion/json'

RSpec.configure do |config|
  config.example_status_persistence_file_path = '.rspec_status'
  config.disable_monkey_patching!
  config.expect_with(:rspec) { |c| c.syntax = :expect }
end
