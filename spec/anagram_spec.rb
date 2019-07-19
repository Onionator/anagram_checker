require 'rspec'
require 'anagram'

describe('anagram?') do
  it('will return true if the 2 words passed to it are agagrams') do
    expect("star".anagram?("rats")).to(eq(true))
  end
end
