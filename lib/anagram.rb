require 'pry'

class String
  def anagram?(word)
    word.each_char { |chr|
      sub!(word[chr], "")
    }
    if self == ""
      return true
    else
      return false
    end

  end
end
