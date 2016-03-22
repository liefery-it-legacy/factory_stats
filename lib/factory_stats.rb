require "factory_stats/version"
require "factory_stats/factory_benchmark"
require "factory_stats/factory_runner_extension"
require "factory_girl"

RSpec.configure do |config|
  config.after :suite do |_example|
    FactoryStats::FactoryBenchmark.results
  end
end

FactoryGirl::FactoryRunner.include FactoryStats::FactoryRunnerExtension
