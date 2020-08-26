require './lib/station.rb'

describe 'station' do
  it "has a friendly name" do
    station = Station.new(name:"Kings Cross",zone: 1)
    expect(station.name).to eq "Kings Cross"
  end
  it "returns the zone on the station" do
    station = Station.new(name:"Kings Cross",zone: 1)
    expect(station.zone).to eq 1
  end

end
