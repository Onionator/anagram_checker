require 'rspec'
require 'anagram'

describe('anagram?') do
  test_word = Anagram.new("star")
  it('will return true if the 2 words passed to it are agagrams') do
    expect(test_word.anagram?("rats")).to(eq(true))
  end
  it('will return true if the 2 words passed to it are the same length with all special characters and punctuation removed') do
    expect(test_word.anagram?("starts")).to(eq(false))
  end
  it('will return true if the 2 words passed to it are anagrams and ignore capitalization') do
    expect(test_word.anagram?("RatS")).to(eq(true))
  end
  it('will return "These words are antigrams" if 2 words are antigrams. They must also be the same length.') do
    expect(test_word.anagram?("feeding")).to(eq("These words are antigrams"))
  end
end
