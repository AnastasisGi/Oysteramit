class Journey
def start(station)
  @start_station = station
end

def end(station)
  @stop_station = station
end

def end_point
@stop_station.name
end


def start_point
  @start_station.name
end

def fare
  return 3.5 if @start_station.zone  == 1 && @stop_station.zone == 3
end

def completed
  [@start_station.name, @stop_station.name]

end

end
