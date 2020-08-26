class Trips
attr_reader :journeys
  def initialize (journeys)
    @journeys = journeys


  end


  def completed
    # @journeys.completed
    # completed_journeys = []
    # @journeys.each do |journey|
    #   puts "this is the completed journey #{journey.completed}"
    # completed_journeys.push(journey.completed)
    # return completed_journeys
    @journeys.map { |e| e.completed  }
  
  end

end
