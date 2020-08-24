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
end
