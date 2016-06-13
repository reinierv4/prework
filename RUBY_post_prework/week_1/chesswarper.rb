class ChessIni
  def initialize(origin,warped,piece)
    @pieces = piece
    @origin = origin
    @warped = warped
    @analysis_x = (@warped[0] - @origin[0])
    @analysis_y = (@warped[1] - @origin[1])
  end
  def legal
      if((@pieces=="pawn") && ((@origin[1] == 2 && @warped[1] == 4) || (@analysis_x == 0 && @analysis_y == 1))) then return true end
      if((@pieces=="rook") && (@analysis_x == 0 || @analysis_y == 0)) then return true end
      if((@pieces=="knight") && (((@analysis_x.abs == 1) && (@analysis_y.abs == 2))||((@analysis_x.abs == 2) && (@analysis_y.abs == 1)))) then return true end
      if((@pieces=="bishop") && (@analysis_x.abs == @analysis_y.abs)) then return true end
      if((@pieces=="queen") && (@analysis_x.abs == @analysis_y.abs || @analysis_x == 0 || @analysis_y == 0)) then return true end
      if((@pieces=="king") && ((@analysis_x.abs <= 1) && (@analysis_y.abs <= 1))) then return true end
      return false   end end
movement = ChessIni.new([0,2],[1,4],"knight")
puts movement.legal ? "is legal, you are a good lad, you play by the rules" : "that is ilegal, you cheater"
