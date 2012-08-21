class Extractor

  def initialize(words, position)
    @text = ""
    @word_array = from_file(words)
    @position_array = from_file(position)
  end

  def execute
    @position_array.each do |position|
      @text << @word_array[position.to_i]
      @text << " "
    end
    to_file
  end

  private

  def from_file(file)
     File.open(file){ |f| f.read }.split || []
  end

  def to_file
    File.open("text_new.txt", "w") do |f|
      f.write @text
    end
  end

end
