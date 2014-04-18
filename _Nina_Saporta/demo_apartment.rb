class Apartment
	attr_accessor :name, :rent, :sqft, :num_bedrooms, :num_bathrooms, :renters

	def initialize(name, rent, sqft, num_bedrooms, num_bathrooms)
		@name = name
		@rent = rent
		@sqft = sqft
		@num_bedrooms = num_bedrooms
		@num_bathrooms = num_bathrooms
		@renters = []
	end

  def is_occupied?
  	@renters.any?
  end

	def to_s
		"#{@name} has #{@sqft} square feet and costs #{@rent} per month."
	end
 
end

nice_apt = Apartment.new("Prospect Heights", 3200, 800, 1, 1)
okay_apt = Apartment.new("Washington Heights", 3090, 900, 1.5, 1)
scary_apt = Apartment.new("Murry Hill", 4000, 200, 0.5, 0.5)

nice_apt.renters << "Rachel"
nice_apt.renters << "Izzie"

if nice_apt.renters.any?
	puts "Sorry, apartment is not available"
else
	puts "This apartment is available for rent! Contact your broker."
end

puts nice_apt
puts okay_apt
puts scary_apt

