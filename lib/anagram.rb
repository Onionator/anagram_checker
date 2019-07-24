class Anagram
  def initialize(input)
    @first_word = input
  end
  def anagram?(second_word)
    if self.is_word?
      @first_word.delete!("!@#${%^&*()}_+=[]|:;\"'<,>.?/ ")
      @first_word.downcase!()
      word_holder = @first_word.chomp
      second_word.delete!("!@#${%^&*()}_+=[]|:;\"'<,>.?/ ")
      second_word.downcase!()
      second_word.each_char { |chr|
      word_holder.sub!(second_word[chr], "")
      }
      if word_holder == "" && @first_word.length == second_word.length
        puts "These phrases are anigrams."
        return true
      elsif word_holder == @first_word
        puts "These phrases are antigrams."
        return false
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
  else
    puts "Use real words."
  end
  def is_word?
    /[aeiouy]/.match(@first_word) ? true : false
  end
end

puts "Enter the first word or phrase to test if it is anagram material."
input = Anagram.new(gets.chomp)
puts "Enter the second word or phrase you think might be an anagram."
puts "return: #{input.anagram?(gets.chomp)}."
