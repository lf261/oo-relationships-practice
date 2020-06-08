require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

listing1 = Listing.new("house", "NYC")
puts listing1
listing2 = Listing.new("apt", "LA")
puts listing2

guest1 = Guest.new("Kosi")
puts guest1 

guest2 = Guest.new("Luis")
puts guest2

trip1 = Trip.new(listing1, guest1)
puts trip1

trip2 = Trip.new(listing2, guest2)
puts trip1



binding.pry
