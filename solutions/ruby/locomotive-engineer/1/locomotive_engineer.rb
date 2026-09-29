class LocomotiveEngineer
  def self.generate_list_of_wagons(*arguments)= arguments # have this data packaged into a unified array

  # takes two arrays containing wagon IDs
  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    # repositions the first two items of the first array to the end
    first, second, *rest = each_wagons_id
    reorganized = *rest, *first, *second
    # insert the values from the second array behind the first index of first array
    # then combine into one array
    first, *rest = reorganized 
    reorganized = *first, *missing_wagons, *rest
  end

  # method must accept a routing hash followed by a variable number of keyword arguments
  def self.add_missing_stops(routing_hash, **keyword_arguments)
    *array = keyword_arguments.values
    combined_hash = {**routing_hash, :stops => array}
  end

  # method must accept two hashes
  # The method should return a consolidated hash with all routing information
  def self.extend_route_information(route, more_route_information)
    combined_hash = {**route, **more_route_information}
  end
end