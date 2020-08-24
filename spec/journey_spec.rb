require './lib/journey.rb'

describe 'journey ' do

it "starts at a station" do
  journey = Journey.new
  station = test_double
  allow(station).to receive(:name) {"Kings Cross"}
  journey.start(station)
  expect(journey.start_point).to eq "Kings Cross"

end


end
