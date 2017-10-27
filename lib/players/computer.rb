module Players
  class Computer < Player
    attr_accessor :board

    # def display(board)
    #   @board = board
    # end

    # def move(board)
    #   pos = rand(1..9).to_s
    # end
    WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7],[2,5,8], [0,4,8], [6,4,2]]

    def move(board)
      potential_win = WIN_COMBINATIONS.select do |array|
        board.cells[0] == token || board.cells[1] == token || board.cells[2] == token
      end
      
    end

  end
end
