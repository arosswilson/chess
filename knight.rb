require_relative 'piece'

class Knight < Piece
  def how_can_i_move(x,y)
   possible_moves = [[x - 2, y - 1],
                     [x - 2, y + 1],
                     [x + 2, y - 1],
                     [x + 2, y + 1],
                     [x - 1, y - 2],
                     [x - 1, y + 2],
                     [x + 1, y - 2],
                     [x + 1, y + 2]]
   possible_moves.delete_if {|coord| coord[0] < 0 || coord[0] > 7 || coord[1] < 0 || coord[1] > 7}
  end
end

