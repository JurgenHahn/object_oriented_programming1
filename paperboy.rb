class Paperboy
  attr_reader :earnings
  attr_accessor :name, :experience

  def initialize(name, experience = 0, earnings = 0)
    @name = name
    @experience = experience
    @earnings = earnings
  end

  def quota
    50 + (experience / 2)
  end

  def deliver(start, finish)

    number_of_houses = finish + 1 - start

    @earnings += amount_earned(number_of_houses)

    @experience += number_of_houses
  end

  def amount_earned(number_of_houses)
    if number_of_houses < quota
      number_of_houses * 0.25 - 2
    elsif number_of_houses == quota
      quota * 0.25
    else
      (quota * 0.25) + ((number_of_houses - quota) * 0.5)
    end
  end

  def report
    puts "I'm #{@name}, I've delivered #{@experience} papers and I've earned #{@earnings} so far!"
  end
end
