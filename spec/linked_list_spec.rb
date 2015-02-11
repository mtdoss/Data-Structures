require 'byebug'
require 'linked_list'

describe LinkedList do
  it "pushes links into the list" do
    list = LinkedList.new
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
end
