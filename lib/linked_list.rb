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

  # mimicing a singly linked list
  # Doesn't actually make sense in the context of a doubly linked list
  def reverse!
    raise "Empty linked list!" if first.next == last
    head = first.next
    curr = head.next
    next_link = curr.next
    head.next = last
    prev = head
    last_link = nil

    until next_link == last
      next_link = curr.next
      curr.next = prev
      prev = curr
      curr = next_link
      last_link = prev
    end
    first.next = last_link
  end

  def cyclic?
    link = first.next
    fast_runner = link
    slow_runner = link

    while true
      2.times do 
        fast_runner = fast_runner.next
        return false if fast_runner == last
        return true if fast_runner == slow_runner
      end

      slow_runner = slow_runner.next
    end
  end

  # not working right now; hard to try to emulate a singly linked list!
  def reverse_recur!
    head = first.next
    next_node = head.next
    return head if next_node.nil?
    head.next = nil
    next_node = next_node.reverse_recur!
  end
  
  def middle_val
    slow = first
    fast = first
    until fast == last
      2.times do 
        break if fast.next.nil?
        fast = fast.next
      end
      slow = slow.next
    end

    slow.value
  end
end
