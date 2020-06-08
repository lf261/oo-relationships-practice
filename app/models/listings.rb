class Listing
#has city attribute

attr_reader :listing_name, :city 
@@all_listings = []
def initialize(listing_name, city)
    @listing_name = listing_name
    @city = city 
    @@all_listings << self
end 

def guests
    trip_arr = Trip.all.select do |trip|
        trip.listing == self 
    end 

    guests = trip_arr.map do |trip|
        trip.guest
    end 
end

def trips
     trip_listings = Trip.all.select do |trip|
        trip.listing == self
     end
end

def trip_count 
    self.trips.count 
end # 1

def self.all 
    @@all_listings
end 


end 
 