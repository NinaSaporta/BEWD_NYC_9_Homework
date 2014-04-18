#Building Class
class Building

  attr_accessor :building_name, :building_address, :apartments
  def initialize(building_name, building_address)
    @building_name = building_name
    @building_address = building_address
    @apartments = []
  end

  def building.view_apartments
   puts "#{building_name}" 
   puts "#{building_address}" 
  end

end
