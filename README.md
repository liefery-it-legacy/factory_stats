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
    
Example output:
-- Address factory calls: --
create: 1100
 10.370000   1.640000  11.010000 ( 13.088933)
build: 87
  0.050000   0.010000   0.060000 (  0.065872)

-- User factory calls: --
create: 1250
131.910000   5.280000 138.200000 (149.099135)
build_stubbed: 9
  0.040000   0.000000   0.040000 (  0.031224)
build: 69
  0.110000   0.010000   0.120000 (  0.217152)

The output times are generated with: http://ruby-doc.org/stdlib-2.3.0/libdoc/benchmark/rdoc/Benchmark.html#method-c-benchmark

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
