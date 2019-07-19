require 'pry'

class String
  def anagram?(second_word)
    delete!("!@#${%^&*()}_+=[]|:;\"'<,>.?/")
    downcase!()
    first_word = self.chomp
    second_word.delete!("!@#${%^&*()}_+=[]|:;\"'<,>.?/")
    second_word.downcase!()
    second_word.each_char { |chr|
      first_word.sub!(second_word[chr], "")
    }
    if first_word == "" && self.length == second_word.length
      return true
    elsif self == first_word
      return "These words are antigrams"
    else
      return false
    end

  end
end
