class Node
  def initialize(val)
    @value = val
    @left = nil
    @right = nil
  end
end

class BST
  def initialize
    @root = Node.new(nil)
  end

  def insert(val)
    node = Node.new(val)
    if @root.nil?
      @root = node
    else
      if true
      end
    end
  end
end
