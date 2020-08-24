require './lib/journey.rb'
class Card
  attr_reader :balance
  MAX_BALANCE = 100
  MIN_FARE = 20
  def initialize(balance: 0 ,journey_class: Journey)
    @journey_class = journey_class
    @balance = balance

  end

  def add(money)
    return "Too much money" if too_much_money?(money)

    @balance += money
  end

  def touch_in(station)
    return "Not enough money" if not_enough_money?
    @journey = @journey_class.new
    @journey.start(station)
    @journey.start_point
  end

  private

  def not_enough_money?
    balance < MIN_FARE
  end

  def too_much_money?(money)
    balance + money >= MAX_BALANCE
  end

end
