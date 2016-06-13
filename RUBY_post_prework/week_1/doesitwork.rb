class ChessIni
  def initialize(origin,warped)
    @origin = origin
    @warped = warped
    @analysis_x = (@warped[0] - @origin[0])
    @analysis_y = (@warped[1] - @origin[1])
  end

  def show
    puts @origin
    puts @warped
  end

  def vectorizer
    puts " x = #{@analysis_x} y = #{@analysis_y}"
  end
end
class Rook < ChessIni
  def legal
    if (@analysis_x == 0 || @analysis_y == 0)
      puts "is legal, you are a good lad, you play by the rules"
    else
      puts "that is ilegal, you dirty ass cheater"
    end
  end
end
class Bishop < ChessIni
  def legal
    if (@analysis_x.abs == @analysis_y.abs)
      puts "is legal, you are a good lad, you play by the rules"
    else
      puts "that is ilegal, you dirty ass cheater"
    end
  end
end
class Queen < ChessIni
  def legal
    if (@analysis_x.abs == @analysis_y.abs || @analysis_x == 0 || @analysis_y == 0)
      puts "is legal, you are a good lad, you play by the rules"
    else
      puts "that is ilegal, you dirty ass cheater"
    end
  end
end
class Pawn < ChessIni
  def legal
    if ((@origin[1] == 2 && @warped[1] == 4) || (@analysis_x == 0 && @analysis_y == 1))
      puts "is legal, you are a good lad, you play by the rules"
    else
      puts "that is ilegal, you dirty ass cheater"
    end
  end
end
class King < ChessIni
  def legal
    if ((@analysis_x.abs <= 1) && (@analysis_y.abs <= 1))
      puts "is legal, you are a good lad, you play by the rules"
    else
      puts "that is ilegal, you dirty ass cheater"
    end
  end
end
class Knight < ChessIni
  def legal
    if (((@analysis_x.abs == 2) && (@analysis_y.abs == 1)) || ((@analysis_x.abs == 1) && (@analysis_y.abs == 2)))
      puts "is legal, you are a good lad, you play by the rules"
    else
      puts "that is ilegal, you dirty ass cheater"
    end
  end
end
movement = Queen.new([5,5],[7,6])
movement.show
movement.vectorizer
movement.legal
