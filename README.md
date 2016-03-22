# FactoryStats

This gem can print simple statistics on your factory_girl factories when using rspec.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'factory_stats', require: false, :github => 'liefery/factory_stats'
```

And then execute:

    $ bundle

Go to your `spec_helper.rb` (or where ever else, that runs before the rspec examples and after factory_girl is required) and add the following:

```ruby
require 'factory_stats' if ENV['FACTORY_STATS']
```

## Usage

    $ FACTORY_STATS=1 rspec

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
