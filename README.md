Legion::Json
=====

Legion::Json is the JSON wrapper that is used by the LegionIO framework. It gives all other gems and extensions a single 
json library to use for consistency. It wraps [multi_json](https://rubygems.org/gems/multi_json) and also [json_pure](https://rubygems.org/gems/json_pure)

Additional C extension style json gems can be installed like [oj](https://rubygems.org/gems/oj) and it they should be 
used automatically. 

Supported Ruby versions and implementations
------------------------------------------------

Legion::Json should work identically on:

 * JRuby 9.2+
 * Ruby 2.4+


Installation and Usage
------------------------

You can verify your installation using this piece of code:

```bash
gem install legion-json
```

```ruby
require 'legion-json'
json_string = '{"foo":"bar","nested":{"hello":"world"}}'
Legion::Json.load(json_string)
Legion::Json.load(json_string, symbolize_keys: false) # symbolize_keys defaults to true

hash = {foo: 'bar', nested: {hello: 'world'}}
Legion::Json.dump(hash)
Legion::Json.dump(hash, )

```

Authors
----------

* [Matthew Iverson](https://github.com/Esity) - current maintainer
