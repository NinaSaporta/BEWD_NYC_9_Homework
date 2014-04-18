#Sharing Behavior and Variables
#TIME: 20 min

# Create an employee class.
class Employee
	attr_accessor :first_name, :last_name

	def initialize(first_name, last_name)
		@first_name = first_name
		@last_name = last_name
	end

	def full_name
		"#{@first_name} #{@last_name}"
	end

	def first_name
	end

	def first_name=(first_name)
	end
end

employee = Employee.new("Nina", "Saporta")
puts employee.full_name

# A manager is contactable by email,
# and wants their title as part of their name display
class Manager < Employee
	attr_accessor :email, :title

	def initialize(first_name, last_name, email, title)
		super(first_name, last_name)
		@email = email
		@title = title
	end

	def full_name
		"#{@title} #{super}"
	end

	def contact
		@email
	end
end

manager = Manager.new("Jon", "Snow", "ghost@starwolves.com", "Lord Commander")
puts manager.full_name
puts manager.contact

# A marketer can be contacted via twitter
# but is fine with the default name display
class Marketer < Employee
 attr_accessor :twitter

  def initialize(first_name, last_name, twitter)
 	super(first_name, last_name)
 	@twitter = twitter
  end

  def contact
	@twitter
  end

end
marketer = Marketer.new("Don", "Draper", "@luckystrike")
puts marketer.full_name
puts marketer.contact




# BONUS: Demonstrate how to make this code less error-prone by using named arguments
#        for the initializers