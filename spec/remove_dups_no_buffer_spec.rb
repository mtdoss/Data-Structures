require 'remove_dups_no_buffer'
describe '#RemoveDupsNoBuffer' do
  before do
   @str_with_dups = "abcdab"
  end

  it 'removes all the duplicates from a string' do
    expect(remove_dups_no_buffer(@str_with_dups)).to eq("abcd")
  end

  it 'removes all duplicates when duplicates are at the end' do
    expect(remove_dups_no_buffer("abcdd")).to eq("abcd")
  end

  it 'removes all duplicates when dupicates are at the beginning' do
    expect(remove_dups_no_buffer("aabcd")).to eq("abcd")
  end

  it 'does not use additional memory' do
  end
end
