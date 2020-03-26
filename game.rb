require_relative "board"
require_relative "human_player"
require_relative "Computer_player"

class Game
    attr_reader :current_player
    def initialize 
        @board = Board.new
        @human = Human_player.new(:X)
        @comp = Computer_player.new(:O)
        @whos_turn = "" 

    end

    def current_player(instance)
        @whos_turn = instance 
    end

    def switch_players! 
        if @whos_turn == @human
            self.current_player(@comp)
        else
            self.current_player(@human)
        end
    end

    def play_turn
        if @whos_turn == @human 
            @board.place_mark(@human.get_move,@human.mark)
            puts
            @human.display(@board)
            puts
            self.switch_players!
        else
            @board.place_mark(@comp.get_move(@board),@comp.mark)
            p "Computer Has Made Their Move!"
            puts 
            @comp.display(@board)
            puts 
            self.switch_players!
        end

    end
    
    def play 
        p "Tic Tac Toe!"
        p "Computer is O and You Are X" 
        p 'Say ME If you would like to go first or YOU if you want your opponent to go first'
        who_goes_first = gets.chomp
        if who_goes_first == "ME"
            self.current_player(@human)
        else 
            self.current_player(@comp)
        end

        @human.display(@board)
        while !@board.over?
            self.play_turn
        end
    end
end

aa = Game.new
aa.play




