module FactoryStats
  module FactoryBenchmark
    extend self
    attr_reader :counts, :times

    def report name, strategy, time
      initialize_hashes name, strategy
      @counts[name][strategy] += 1
      @times[name][strategy]  += time
    end

    def initialize_hashes name, strategy
      @counts                 ||= {}
      @times                  ||= {}
      @counts[name]           ||= {}
      @times[name]            ||= {}
      @counts[name][strategy] ||= 0
      @times[name][strategy]  ||= Benchmark::Tms.new
    end

    def sorted_counts
      self.counts.sort_by do |_name, strategy_hash|
        strategy_hash[:create] || 0
      end
    end

    def results
      puts ''
      sorted_counts.each do |name, strategy_hash|
        puts ANSI.blue("-- #{name.to_s.classify} factory calls: -- ")
        strategy_hash.each do |strategy, counts|
          puts "#{strategy}: #{counts}"
          puts times[name][strategy]
        end
        puts ''
      end
    end
  end
end
