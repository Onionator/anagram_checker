require 'rspec'
require 'anagram'

describe('anagram?') do
  it('will return true if the 2 words passed to it are agagrams') do
    expect("star".anagram?("rats")).to(eq(true))
  end
  it('will return true if the 2 words passed to it are the same length with all special characters and punctuation removed') do
    expect("lame".anagram?("meals")).to(eq(false))
  end
end
