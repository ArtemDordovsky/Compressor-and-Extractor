class Compressor

  def initialize(file = nil)
    @text = File.open(file){ |f| f.read } || ""
    @word_array = []
    @position_array = []
  end

  def execute
    word_array_old = @text.split
    @word_array = word_array_old.uniq
    word_array_old.each{ |word| @position_array.push(@word_array.index(word)) }
    to_file
  end

  private

  def to_file
    File.open("word_array.txt", "w") do |f|
      f.write @word_array*" "
    end
    File.open("position_array.txt", "w") do |f|
      f.write @position_array*" "
    end
  end

end

