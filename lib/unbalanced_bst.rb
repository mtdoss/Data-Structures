class Node
  attr_accessor :value, :left, :right
  def initialize(val)
    @value = val
    @left = nil
    @right = nil
  end
end

class BST
  attr_accessor :root
  def initialize
    @root = nil
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

  def self.in_order(node)
    return if node.nil?
    in_order(node.left)
    p node.value
    in_order(node.right)
  end

  def self.pre_order(node)
    return if node.nil?
    p node.value
    pre_order(node.left)
    pre_order(node.right)
  end

  def self.post_order(node)
    return if node.nil?
    post_order(node.left)
    post_order(node.right)
    p node.value
  end

  def self.include?(node, val)
    return false if node.nil?
    return true if val == node.value
    if val <= node.value
      return include?(node.left, val)
    else
      return include?(node.right, val)
    end
  end
end


test = BST.new
[5, 4, 7, 15, 1, 2, 8, 3, 15].each do |val|
  test.insert(val)
end
BST::in_order(test.root)
p BST::include?(test.root, 1)
p BST::include?(test.root, 8)
p BST::include?(test.root, 20)
