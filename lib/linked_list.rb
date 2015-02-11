require_relative "link"

class LinkedList
  attr_accessor :first, :last
  def initialize
    self.first = SentinelLink.new(:first)
    self.last = SentinelLink.new(:last) 

    self.first.insert_right(self.last)
  end

  #slow!
  def [](idx)
    raise "index out of bounds" if idx < 0
    link = self.first
    (idx + 1).times do # (idx+1) because we're starting from the -1'th position
      link = link.next
      raise "index out of bounds" if link == self.last
    end

    link
  end

  def empty?
    first.next == last 
  end

  def pop_value
    pop_link.value
  end

  def pop_link
    last.prev.remove
  end

  def push(value)
    push_link(Link.new(value))
  end

  def push_link(link)
    last.insert_left(link)

    link
  end

  def shift_value
    shift_link.value
  end

  def shift_link
    first.next.remove
  end

  def unshift(value)
    unshift_link(Link.new(value))
  end

  def unshift_link(link)
    first.insert_right(link)

    link
  end

end
