require 'reverse_string_c_style'

describe 'ReverseStringCStyle#reverse_c_style!' do
  it 'reverses a string with even number characters and begins with a null character' do
    str = "abcd"
    expect(reverse_c_style!(str)).to eq("\0dcba")
  end

  it 'reverses a stirng with odd number characters and begins with a null character' do
    str = "abcde"
    expect(reverse_c_style!(str)).to eq("\0edcba")
  end
end
