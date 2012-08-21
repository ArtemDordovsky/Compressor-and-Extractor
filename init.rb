require_relative 'compressor.rb'
require_relative 'extractor.rb'
require 'benchmark'

Benchmark.bm do |x|
x.report { file = Compressor.new("text.txt")
file.squeeze }
end

Benchmark.bm do |x|
x.report { file = Extractor.new("word_array.txt", "position_array.txt")
file.execute }
end
