class Link
  attr_accessor :value, :prev, :next
  def initialize(val)
    @value = val
  end

  def is_detached?
    !(self.next || self.prev)
  end

  def insert_left(link)
    raise "Inserting a link that's already connected!" unless link.is_detached?
    left = self.prev if self.prev
    left.next = link
    link.next = self
    self.prev = link
    link.prev = left
  end

  def insert_right(link)
    raise "Inserting a link that's already connected!" unless link.is_detached?
    right = self.next if self.next
    right.prev = link
    link.prev = self
    link.next = right
    self.next = link
  end

  def remove
    left = self.prev if self.prev
    right = self.next if self.next
    left.next, right.prev = right, left
    self.next, self.prev = nil, nil

    self
  end
end

class SentinelLink < Link
  attr_accessor :first, :last, :side
  
  def initialize(side)
    raise "Not possible" unless [:first, :last].include?(side)
  end

  def prev=(link)
    if side == :last
      return super(link)
    elsif link.nil?
      # fine
    else
      raise "Can't set previous of first sentinel"
    end      
  end 

  def next=(link)
    if side == :first
      return super(link)
    elsif link.nil?
      #fine
    else
      raise "Can't set next of last sentinel"
    end
  end

  def value
    raise "Sentinels don't have values"
  end

  def value=(val)
    raise "Sentinels can't set values"
  end

  def remove
    raise "Can't remove sentinels"
  end
end
