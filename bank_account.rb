class BankAccount

attr_accessor :balance, :interest_rate

def initialize(balance = 0, interest_rate = 0)
  @balance = balance
  @interest_rate = interest_rate
end

def deposit(amount)
  @balance += amount
end

def withdraw(amount)
  @balance -= amount
end

end
