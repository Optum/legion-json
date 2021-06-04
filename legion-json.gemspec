# frozen_string_literal: true

require_relative 'lib/legion/json/version'

Gem::Specification.new do |spec|
  spec.name = 'legion-json'
  spec.version       = Legion::Json::VERSION
  spec.authors       = ['Esity']
  spec.email         = %w[matthewdiverson@gmail.com ruby@optum.com]

  spec.summary       = 'Wraps multi_json, json_pure and others to allow for interchanging json gems without deploying all new extensions'
  spec.description   = 'A JSON wrapper module for the LegionIO framework'
  spec.homepage      = 'https://github.com/Optum/legion-json'
  spec.license       = 'Apache-2.0'
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.4'
  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.test_files        = spec.files.select { |p| p =~ %r{^test/.*_test.rb} }
  spec.extra_rdoc_files  = %w[README.md LICENSE CHANGELOG.md]
  spec.metadata = {
    'bug_tracker_uri' => 'https://github.com/Optum/legion-json/issues',
    'changelog_uri' => 'https://github.com/Optum/legion-json/src/main/CHANGELOG.md',
    'documentation_uri' => 'https://github.com/Optum/legion-json',
    'homepage_uri' => 'https://github.com/Optum/LegionIO',
    'source_code_uri' => 'https://github.com/Optum/legion-json',
    'wiki_uri' => 'https://github.com/Optum/legion-json/wiki'
  }

  spec.add_dependency 'json_pure'
  spec.add_dependency 'multi_json'
end
