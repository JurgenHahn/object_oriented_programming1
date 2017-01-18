class Cat

  attr_accessor :name, :preferred_food, :meal_time

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at

    if @meal_time.to_i > 0 && @meal_time.to_i < 12
      return @meal_time + "am"
    elsif @meal_time.to_i > 12 && @meal_time.to_i < 24
      return "#{meal_time.to_i - 12}pm"
    elsif @meal_time.to_i == 12
      return "12pm"
    elsif @meal_time.to_i == 0
      return "12am"
    end
  end

  def meow
    puts "My name is #{@name}, I love #{@preferred_food} and I eat at #{@meal_time}"
  end

end
