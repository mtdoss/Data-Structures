require 'uniq_string'

describe '#UniqString' do
  it 'should return true if a string has all unique characters' do
    uniq_str = "abcde fghijklmn!"
    expect(uniq_str?(uniq_str)).to be true
  end

  it 'should return false if a string has at least one set of duplicats' do
    not_uniq_str = "aabcde fghiijklmn!"
    expect(uniq_str?(not_uniq_str)).to be false
  end

  it 'should return true for the empty string' do
    empty_str = ""
    expect(uniq_str?(empty_str)).to be true
  end

  it 'should raise an invalid argument exception if not given a string' do
    num = 5
    expect {uniq_str?(num) }.to raise_error(ArgumentError)
  end
end
