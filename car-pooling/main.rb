# https://leetcode.com/problems/car-pooling/

# @param {Integer[][]} trips
# @param {Integer} capacity
# @return {Boolean}
def car_pooling(trips, capacity)
  events = []

  for trip in trips do
    # Create a timeline of events
    events << { where: trip[1], value: trip[0] }
    events << { where: trip[2], value: -trip[0] }
  end

  # Sort by when the event happens
  # In the case of two events on the same location, allow people out of the car first
  events.sort_by!{ |event| [event[:where], event[:value]] }

  peeps_in_car = 0
  for event in events do 
    peeps_in_car += event[:value]
    return false if peeps_in_car > capacity
  end

  return true
end

puts car_pooling([[4,5,6],[6,4,7],[4,3,5],[2,3,5]], 13)


