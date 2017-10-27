module Players
  class Computer < Player
    attr_accessor :board

    # def other_token
    #   token == "X" ? "O" : "X"
    # end

    # def move(board)
    #   pos = rand(1..9).to_s
    # end
    WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7],[2,5,8], [0,4,8], [6,4,2]]

    def move(board)
      if board.turn_count <= 4
        pos = rand(1..9).to_s
      else
        potential_win = WIN_COMBINATIONS.find do |array|
          (board.cells[0] == token && board.cells[1] == token) || (board.cells[1] == token && board.cells[2] == token) ||
            (board.cells[0] == token && board.cells[2] == token)
        end
      end
      pos = potential_win.find { |idx| board.cells[idx] == "" } + 1
    end
  end
end
