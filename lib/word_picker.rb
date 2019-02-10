class WordPicker
  attr_reader :word

  def initialize
    @word = get_word(words_array)
  end

  def words_array
    dictionary = File.open('dictionary.txt')
    words = []
    File.readlines(dictionary).each do |line|
      if line.length > 5 && line.length < 12
        words << line
      end
    end
    words
  end

  def get_word(words_array)
    words_array.sample
  end

end
