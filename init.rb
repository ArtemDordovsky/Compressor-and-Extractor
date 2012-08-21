require_relative 'compressor.rb'
require_relative 'extractor.rb'
require 'benchmark'

Benchmark.bm do |x|
x.report { compressor = Compressor.new("text.txt")
compressor.execute }
end

Benchmark.bm do |x|
x.report { extractor = Extractor.new("word_array.txt", "position_array.txt")
extractor.execute }
end
