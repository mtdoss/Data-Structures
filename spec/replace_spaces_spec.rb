require 'replace_spaces'
describe '#replace_spaces' do
  it 'should replace a normal string with %20' do
    str = "hello there"
    expect(replace_spaces(str)).to eq("hello%20there")
  end

  it 'should handle empty space at beginning or end' do
    str = "hello there "
    expect(replace_spaces(str)).to eq("hello%20there%20")
  end

  it 'should not replace newlines with %20' do
    str = "hello\nthere"
    expect(replace_spaces(str)).to eq("hello\nthere")
  end

  it 'should replace spaces when they occur back to back' do
    str = "hello  there"
    expect(replace_spaces(str)).to eq("hello%20%20there")
  end
end
