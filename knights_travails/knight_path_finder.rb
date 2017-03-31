require_relative '00_tree_node'

class KnightPathFinder
  attr_accessor :move_tree, :start_pos

  def initialize(pos)
    @start_pos = pos
  end

  def self.valid_moves(pos)
    x,y = pos
    moves = [[x-1, y+2], [x+1, y+2], [x+2, y+1], [x+2, y-1],
    [x+1, y-2], [x-1, y-2], [x-2, y-1], [x-2, y+1]]
    moves.reject { |move| move.any? { |el| el < 0 || el > 7 }}
  end

  def build_move_tree

  end

end
