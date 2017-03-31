class PolyTreeNode
  attr_reader :value, :parent
  attr_accessor :children

  def initialize(value)
    @value, @parent, @children = value, nil, []
  end

  def parent=(node)
    @parent.children.delete(self) if @parent
    @parent = node
    if node
      node.children << self unless node.children.include?(self)
    end
  end

end
