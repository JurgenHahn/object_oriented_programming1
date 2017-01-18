class Player

  attr_reader :gold_coins, :health_points, :lives, :score

  def initialize(gold_coins = 0, health_points = 10, lives = 5, score = 0)
    @gold_coins = gold_coins
    @health_points = health_points
    @lives = lives
    @score = score
  end

  def do_battle
    if @lives == 0
      restart
    elsif @health_points == 1
      @lives -= 1
      @health_points = 10
    elsif @health_points -= 1
    end
  end

  def restart
    @gold_coins = 0
    @health_points = 10
    @lives = 5
    @score = 0
  end

  def level_up
    @lives += 1
    @score -= 10
  end
#fix this code later on
  def collect_treasure(treasure)
    @gold_coins += treasure.to_i

    if @gold_coins >= 10
      @score += 1
      @gold_coins -= 10

      if @score == 10 || @score > 10
        level_up
      end
    end

  end

end
