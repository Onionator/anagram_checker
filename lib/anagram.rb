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
      word_holder.each_char { |chr|
        @first_word.sub!(word_holder[chr], "")
      }
      output = ""
      @first_word.each_char.with_index { |chr, i|
        if i == @first_word.length - 1 && output.length > 1
          output += "and "
        end
        output += chr
        if i < @first_word.length - 1
          output += ", "
        end
      }
      output += "."
      puts "These phrases aren't anagrams, but they both contain: #{output}"
        return false
    end
  end
end

p Anagram.new(gets.chomp).anagram?(gets.chomp)
