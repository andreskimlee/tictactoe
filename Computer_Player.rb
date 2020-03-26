
require_relative "board"
class Computer_player
    attr_reader :mark 
     def initialize(mark)
        @mark = mark
    end

    def display(board) 
        puts " #{board.grid[0][0]} | #{board.grid[0][1]} | #{board.grid[0][2]} "
        puts "---------"
        puts " #{board.grid[1][0]} | #{board.grid[1][1]} | #{board.grid[1][2]} "
        puts "---------"
        puts " #{board.grid[2][0]} | #{board.grid[2][1]} | #{board.grid[2][2]} "
    end

    def get_move(board)
        space = true
        while space
            row = rand(0..2)
            column = rand(0..2)
            position = [row, column] 
            if board.empty?(position)
                return position
                space = false
            end
        end   
    end

end
