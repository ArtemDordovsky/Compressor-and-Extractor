class Extractor

  def initialize(words, position)
    @text = ""
    @word_array = File.open(words){ |f| f.read }.split || []
    @position_array = File.open(position){ |f| f.read }.split || []
  end

  def execute
    @position_array.each do |position|
      @text << @word_array[position.to_i]
      @text << " "
    end
    to_file
  end

  private

  def to_file
    File.open("text_new.txt", "w") do |f|
      f.write @text
    end
  end

end
