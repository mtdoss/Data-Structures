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

  it 'correctly reverses a linked list' do
    [1, 2, 3, 4, 5, 6, 7].each do |val|
      list.push(val)
    end
    list.reverse!
    expect(list[0].value).to eq(7)
    expect(list[1].value).to eq(6)
    expect(list[2].value).to eq(5)
    # list.reverse_recur!
    # expect(list[0].value).to eq(1)
    # expect(list[1].value).to eq(2)
    # expect(list[2].value).to eq(3)
    #
  end

  it 'correctly says that non-cyclic lists are non-cyclic' do
    [1, 2, 3, 4, 5].each do |val|
      list.push(val)
    end

    expect(list.cyclic?).to be false
  end

  it 'correctly says that cyclic lists are cyclic' do
    link1 = Link.new(1)
    link2 = Link.new(2)
    link3 = Link.new(3)
    list.push_link(link1)
    list.push_link(link2)
    list.push_link(link3)
    link1.next = link2
    link2.next = link3
    link3.next = link1
    expect(list.cyclic?).to be true
  end

  it 'correctly finds the middle element in an odd list' do
    [1, 2, 3, 4, 5].each do |val|
      list.push(val)
    end

    expect(list.middle_val).to eq(3)
  end

end
