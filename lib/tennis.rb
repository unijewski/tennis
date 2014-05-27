class Tennis

  def initialize
    @player_one = 0
    @player_two = 0  
  end

  def score
    return "#{@player_one} - #{@player_two}"
  end

  def point_for(player_id)
    if player_id == 1
      @player_one = increase_score(@player_one)
    end
  end

  def increase_score(current_score)
    case current_score
    when 0
      15
    when 15
      30
    when 30
      40
    end
  end

end