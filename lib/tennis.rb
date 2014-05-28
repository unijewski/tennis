class Tennis

  def initialize
    @player_one = 0
    @player_two = 0  
  end

  def score
    if @player_one == 'wins'
      return 'player 1 wins'
    end

    if @player_two == 'wins'
      return 'player 2 wins'
    end

    if deuce?
      return 'deuce'
    end

    if @player_one == 'advantage in'
      return 'player 1 has an advantage'
    end
    
    return "#{@player_one} - #{@player_two}"
  end

  def point_for(player_id)
    if deuce?
      deuce_rule(player_id)
    else
      classic_rule(player_id)
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
    when 40
      'wins'
    end
  end

  def deuce?
    if @player_one == 'deuce' && @player_two == 'deuce'
      return true
    end

    return false
  end

  def classic_rule(player_id)
    if player_id == 1
      @player_one = increase_score(@player_one)
    elsif player_id == 2
      @player_two = increase_score(@player_two)
    end

    if @player_one == 40 && @player_two == 40
      @player_one = 'deuce'
      @player_two = 'deuce'
    end
  end

  def deuce_rule(player_id)
    if player_id == 1
      if @player_one == 'deuce'
        @player_one = 'advantage in'
        @player_two = 'advantage out'
      end
    end
  end

end