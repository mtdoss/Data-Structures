require 'byebug'
require 'linked_list'

#TODO: DRY this up! pushing values in each block
describe LinkedList do
  subject(:list) { LinkedList.new }
  it "pushes links into the list" do
    link1 = Link.new(5)
    link2 = Link.new(10)
    list.push_link(link1)
    list.push_link(link2)

    expect(list[0]).to eq(link1)
    expect(list[0].value).to eq(5)
    expect(list[1]).to eq(link2)
    expect(list[1].value).to eq(10)

    expect(link1.next).to eq(link2)
    expect(link2.prev).to eq(link1)
    expect(link1.prev).to eq(list.first)
    expect(list.first.next).to eq(link1)
  end

  it "pushes values into the list" do
    list.push(5)
    list.push(10)
    expect(list[0].value).to eq(5)
    expect(list[1].value).to eq(10)
  end

  it 'unshifts links into the list' do
    link1 = Link.new(5)
    link2 = Link.new(10)
    list.unshift_link(link1)
    list.unshift_link(link2)

    expect(list[0]).to eq(link2)
    expect(list[0].value).to eq(10)
    expect(list[1]).to eq(link1)
    expect(list[1].value).to eq(5)

    expect(link2.next).to eq(link1)
    expect(link1.prev).to eq(link2)
    expect(link2.prev).to eq(list.first)
    expect(list.first.next).to eq(link2)
  end

  it 'correctly identifies empty lists' do
    expect(list.empty?).to be true
    list.push(5)
    expect(list.empty?).to be false
  end

  it 'correctly pops links' do
    list.push(5)
    list.push(10)
    
    link = list.pop_link
    expect(link.value).to eq(10)
    list.pop_link
    expect(list.empty?).to be true
  end

  it 'correctly pops values' do
    list.push(5)
    list.push(10)

    expect(list.pop_value).to eq(10)
    expect(list.pop_value).to eq(5)
    expect(list.empty?).to be true
  end

  it 'correctly shifts links' do
    link1 = list.push(5)
    link2 = list.push(10)
    
    expect(list.shift_link).to eq(link1)
    expect(list.shift_link).to eq(link2)
    expect(list.empty?).to be true
  end

  it 'correctly shifts values' do
    list.push(5)
    list.push(10)

    expect(list.shift_value).to eq(5)
    expect(list.shift_value).to eq(10)
    expect(list.empty?).to be true
  end
end