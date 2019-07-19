require 'pry'

class String
  def anagram?(word)
    delete!("!@#${%^&*()}_+=[]|:;\"'<,>.?/")
    word.delete!("!@#${%^&*()}_+=[]|:;\"'<,>.?/")
    if self.length == word.length
    word.each_char { |chr|
      sub!(word[chr], "")
    }
  else
    return false
  end
    if self == ""
      return true
    else
      return false
    end

  end
end
