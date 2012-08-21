class Extractor

  def initialize(words, position)
    @words_file = words
    @position_file = position
    @text = ""
    @word_array = []
    @position_array = []
  end

  def execute
    from_file
    @position_array.each do |position|
      @text << @word_array[position.to_i]
      @text << " "
    end
    to_file
  end

  def from_file
    @words = File.open(@words_file){ |f| f.read }
    @position = File.open(@position_file){ |f| f.read }
    @word_array = @words.split
    @position_array = @position.split
  end

  def to_file
    File.open("text_new.txt", "w") do |f|
      f.write @text
    end
  end

end
