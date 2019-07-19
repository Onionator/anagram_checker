require 'pry'

class Anagram
  def initialize(input)
    @first_word = input
  end
  def anagram?(second_word)
    @first_word.delete!("!@#${%^&*()}_+=[]|:;\"'<,>.?/ ")
    @first_word.downcase!()
    word_holder = @first_word.chomp
    second_word.delete!("!@#${%^&*()}_+=[]|:;\"'<,>.?/ ")
    second_word.downcase!()
    second_word.each_char { |chr|
      word_holder.sub!(second_word[chr], "")
    }
    if word_holder == "" && @first_word.length == second_word.length
      return true
    elsif word_holder == @first_word
      return "These words are antigrams"
    else
      return false
    end

  end
end
