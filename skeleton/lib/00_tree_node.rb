class PolyTreeNode
  attr_reader :value, :parent
  attr_accessor :children

  def initialize(value)
    @value, @parent, @children = value, nil, []
  end

  def parent=(node)
    @parent = node
    node.children << self
  end

end
