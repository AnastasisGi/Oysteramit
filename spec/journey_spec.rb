require './lib/journey.rb'

describe 'journey ' do

it "starts at a station" do
  journey = Journey.new
  station = test_double
  allow(station).to receive(:name) {"Kings Cross"}
  journey.start(station)
  expect(journey.start_point).to eq "Kings Cross"

end


it "ends at a station" do
  journey = Journey.new
  station = test_double
  allow(station).to receive(:name) {"Greenwich"}
  journey.end(station)
  expect(journey.end_point).to eq "Greenwich"

end

# it "In order to know how far i have travvelled I need to know what zone the station is " do
#   journey = Journey.new
#   station = test_double
#   allow(station).to receive(:zone) {"Zone 1"}
#   journey.end(station)
#   expect(journey.end_point).to eq "Zone 1"
# end

it "calculates the fare " do
  journey = Journey.new
  station_start = test_double
  station_end = test_double
  allow(station_start).to receive(:zone) {1}
  journey.start(station_start)
  allow(station_end).to receive(:zone) {3}
  journey.end(station_end)
  expect(journey.fare).to eq 3.5


end

end
