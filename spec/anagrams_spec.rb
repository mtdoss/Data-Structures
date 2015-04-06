require 'anagrams'
describe '#permutation_anagrams?' do
  it 'should return true if string is anagram (even number of chars)' do
    str = "aacc"
    expect(permutation_anagrams?(str)).to be true
  end

  it 'should return true if two strings are anagrams (odd number of chars)' do
    str = "aca"
    expect(permutation_anagrams?(str)).to be true
  end

  it 'should return false if two strings are not anagrams (even number of chars)' do
    str = "acbb"
    expect(permutation_anagrams?(str)).to be false
  end

  it 'should return true if permutation is anagram (even)' do
    str = "aaccc"
    expect(permutation_anagrams?(str)).to be true
  end

  it 'should return true if permutation is anagram (odd)' do
    str = "abb"
    expect(permutation_anagrams?(str)).to be true
end

  it 'handles the empty string' do
    str = ""
    expect(permutation_anagrams?(str)).to be true
  end

end
