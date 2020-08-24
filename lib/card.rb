class Card
  attr_reader :balance
  MAX_BALANCE = 100

  def initialize(balance: 0)
    @balance = balance
  end

  def add(money)
    return "Too much money" if too_much_money?(money)

    @balance += money
  end

  private

  def too_much_money?(money)
    balance + money >= MAX_BALANCE
  end

end
