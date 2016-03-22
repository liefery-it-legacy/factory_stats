
require 'benchmark'

module FactoryStats
  module FactoryRunnerExtension

    mattr_accessor :counts, :times

    def run_with_count(*args)
      return_value = nil

      time = Benchmark.measure do
        return_value = run_without_count(*args)
      end

      FactoryBenchmark.report @name, @strategy, time
      return_value
    end

    def self.included(mod)

      mod.class_eval do
       alias_method_chain :run, :count
      end
    end
  end
end
