require './lib/trips.rb'
describe 'Log of the journeys' do
  it "Outputs the completed journey" do
    journey = Journey.new
    station_start = test_double
    station_end = test_double
    allow(station_start).to receive(:name) {"Kings Cross"}
    journey.start(station_start)
    allow(station_end).to receive(:name) {"Greenwich"}
    journey.end(station_end)
    trips = Trips.new([journey])
    expect(trips.completed).to eq [["Kings Cross", "Greenwich"]]

  end

  it "Outputs multiple completed trips" do
    journey1 = Journey.new
    station_start1 = test_double
    station_end1 = test_double
    allow(station_start1).to receive(:name) {"Kings Cross"}
    journey1.start(station_start1)
    allow(station_end1).to receive(:name) {"Greenwich"}
    journey1.end(station_end1)

    journey2 = Journey.new
    station_start2 = test_double
    station_end2 = test_double
    allow(station_start2).to receive(:name) {"Hammersmith"}
    journey2.start(station_start2)
    allow(station_end2).to receive(:name) {"Holborn"}
    journey2.end(station_end2)


    trips = Trips.new([journey1 , journey2])
    expect(trips.completed).to eq [["Kings Cross", "Greenwich"],["Hammersmith","Holborn" ]]

  end

end
