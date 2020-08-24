require './lib/card.rb'

describe 'a card' do
  it 'has a balance of money' do
    card = Card.new

    expect(card.balance).to eq 0
  end

  it 'adds money' do
    card = Card.new

    expect(card.add(5)).to eq 5
  end

  it 'increases the balance when money is added' do
    card = Card.new(balance: 5)
    card.add(5)

    expect(card.balance).to eq 10
  end

  it "doesn't add money if the balance would be too big" do
    card = Card.new(balance: 50)

    expect(card.add(60)).to eq "Too much money"
  end

  describe 'touch in and touch out' do

    it 'touches in to start a journey' do
      journey_class = test_double
      journey = test_double
      allow(journey_class).to receive(:new){journey}
      allow(journey).to receive(:start){}
      allow(journey).to receive(:start_point){"Kings Cross"}
      card = Card.new(journey_class:journey_class,balance:50)
      station = test_double
      expect(card.touch_in(station)).to  eq "Kings Cross"
    end
    it "does not start a journey if there is not enough money" do
      card = Card.new
      station = test_double
      expect(card.touch_in(station)).to  eq "Not enough money"
    end

  end
end
