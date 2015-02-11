require_relative "link"

class LinkedList
  attr_accessor :first, :last
  def initialize
    self.first = SentinelLink.new(:first)
    self.last = SentinelLink.new(:last) 

    self.first.insert_right(self.last)
  end

  def [](idx)
    raise "index out of bounds" if idx < 0


  end

  def empty?
    
  end

  def pop
  end

  def pop_link
  end

  def push(value)
  end

  def push_link(link)
  end

  def shift
    
  end

  def shift_link
  end

  def unshift(value)
  end

  def unshift_link(link)
  end

end
