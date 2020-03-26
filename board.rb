class Board
    attr_reader :grid
    def initialize
        @grid = Array.new(3) { Array.new(3) }

    end

    def place_mark(position,mark)
        row = position[0] 
        column = position[1]
        if self.empty?(position)
            if mark == :X 
                @grid[row][column] = :X 
            elsif mark == :O 
                @grid[row][column] = :O
            end
        else
            raise  "error, position is not empty"
        end
    end

    def empty?(position)
        row = position[0] 
        column = position[1]
        if @grid[row][column] == nil
            return true 
        else
            return false 
        end
    end

    def winner?
        if self.grid[1][1] == :X && self.grid[0][0] == :X && self.grid[2][2] == :X
            return :X 
        elsif self.grid[0][0] == :X && self.grid[0][1] == :X && self.grid[0][2] == :X 
            return :X
        elsif self.grid[1][0] == :X && self.grid[1][1] == :X  && self.grid[1][2] == :X 
            return :X
        elsif self.grid[2][0] == :X && self.grid[2][1] == :X  && self.grid[2][2] == :X 
            return :X
        elsif self.grid[0][0] == :X && self.grid[1][0] == :X  && self.grid[2][0] == :X
            return :X
        elsif self.grid[0][1] == :X && self.grid[1][1] == :X  && self.grid[2][1] == :X
            return :X
        elsif self.grid[0][2] == :X  && self.grid[1][2] == :X  && self.grid[2][2] == :X
            return :X
        elsif self.grid[0][2] == :X && self.grid[1][1] == :X && self.grid[2][0] == :X
            return :X        


        elsif self.grid[0][0] == :O && self.grid[0][1] == :O && self.grid[0][2] == :O 
            return :O
        elsif self.grid[1][0] == :O && self.grid[1][1] == :O && self.grid[1][2] == :O 
            return :O
        elsif self.grid[2][0] == :O && self.grid[2][1] == :O && self.grid[2][2] == :O 
            return :O
        elsif self.grid[0][0] == :O && self.grid[1][0] == :O && self.grid[2][0] == :O 
            return :O
        elsif self.grid[0][1] == :O && self.grid[1][1] == :O && self.grid[2][1] == :O 
            return :O
        elsif self.grid[0][2] == :O && self.grid[1][2] == :O && self.grid[2][2] == :O
            return :O
        elsif self.grid[1][1] == :O && self.grid[0][0] == :O && self.grid[2][2] == :O
            return :O
        elsif self.grid[0][2] == :O && self.grid[1][1] == :O && self.grid[2][0] == :O
            return :O
        end
    end

  def over? 
    if self.winner? == :X  
         p "You Win!" 
        return true
    elsif self.winner? == :O
        p "You Lose!"
        return true 
    else
        return false
    end
  end



end 

