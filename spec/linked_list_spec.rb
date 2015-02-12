require 'byebug'
require 'linked_list'

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

end
