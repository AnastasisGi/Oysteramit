require './lib/station.rb'

describe 'station' do
  it "has a friendly name" do
    station = Station.new(name:"Kings Cross")
    expect(station.name).to eq "Kings Cross"
  end
end
