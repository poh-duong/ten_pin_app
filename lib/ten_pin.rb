class TenPin

  attr_reader :number_of_players

  def number_of_players=(number_of_players)
    if  number_of_players.to_i > 2 || number_of_players.to_i < 1
      raise StandardError, "Not valid #{ number_of_players}"
    end
    @number_of_players = number_of_players
  end

  def players=(players)
    
  end

  def bowl

  end

end
