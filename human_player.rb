require_relative "board"
class Human_player
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

    def get_move
        puts  "Enter a Position like 0,0"
        puts 
        user_input = gets.chomp
        arr = user_input.split(",") 
        position = arr.map { |num| num.to_i } 
    end
end












