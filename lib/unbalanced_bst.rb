class Node
  attr_accessor :value, :left, :right
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
      insert_at_node(@root, node)
    end
  end

  def insert_at_node(root_node, new_node)
    root_val, new_val = root_node.value, new_node.value
    if new_val <= root_val
      if root_node.left
        insert_at_node(root_node.left, new_node)
      else
        root_node.left = new_node
      end 
    else
      if root_node.right
        insert_at_node(root_node.right, new_node)
      else
        root_node.right = new_node
      end 
    end
  end

  def in_order(node)
    return if node.nil?
    in_order(node.left)
    p node.value
    in_order(node.right)
  end
end


test = BST.new
test.insert(5)
test.insert(4)
test.insert(7)
test.insert(15)
test.insert(1)
test.insert(2)
test.insert(8)
test.insert(3)
in_order(test.root)
