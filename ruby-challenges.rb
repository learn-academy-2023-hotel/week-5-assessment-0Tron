# ASSESSMENT 5: Ruby Coding Practical Questions
# MINASWAN

# -------------------1) Create a method that takes in a hash and returns one array with all the hash values at their own index and in alphabetical order. No nested arrays. Use the test variable provided.
# HINT: Google 'ruby get rid of nested arrays'

us_states = { northwest: ['Washington', 'Oregon', 'Idaho'], southwest: ['California', 'Arizona', 'Nevada'], notheast: ['Maine', 'New Hampshire', 'Rhode Island'] }
# Expected output: ['Arizona', 'California', 'Idaho', 'Maine', 'Nevada', 'New Hampshire', 'Oregon', 'Rhode Island', 'Washington'] 

def in_order(hash)
    hash.values.each_with_object([]) { |arr, result| result.concat(arr) }.sort
  end

p in_order(us_states)

# Pseudo code:

# the .each_with_object part iterates through the hash initializing an empty array [].
# for each of the values in the array it concatenates its elemebts to the result array.
# finally .sort is used to sort the flattened array in alphabetical order

# --------------------2a) Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a bike_info method that returns a sentence with all the data from the bike object.

class Bike
    def initialize(model)
        @model = model
        @wheels = 2
        @current_speed = 0
    end

    def set_model(model)
        @model = model
    end

    def pedal_faster(increase_speed)
        @current_speed += increase_speed
        
    end

    def brake(speed_decrease)
        @current_speed = [@current_speed - speed_decrease, 0].max 
    end

    def bike_info
         "The #{@model} bike has #{@wheels} wheels and is going #{@current_speed} mph"
    end
end

bike = Bike.new("Trek")

puts bike.pedal_faster(10)
puts bike.pedal_faster(18)
puts bike.brake(5)
puts bike.brake(25)

# Expected output example: 'The Trek bike has 2 wheels and is going 0 mph.
# Pseudo code:

# Made a class called Bike and initialize model
# Wheels and MPH are not initialized because we set a specific value for them
# Created a method to accept a parameter. In this case it would be "Trek".
# Created a method for our string interpolation.
# Created a method to increase the current speed we had by using += which is essentially telling us ourVar = ourVar + new Var.
# Created a braking method we had to add the 0 to ensure that we didnt go into the negative that the lowest it would be was 0.

# -------------------2b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed by a given amount. The brake method should decrease the speed by a given amount. The bike cannot go negative speeds.

# Expected output example: my_bike.pedal_faster(10) => 10
# Expected output example: my_bike.pedal_faster(18) => 28
# Expected output example: my_bike.brake(5) => 23
# Expected output example: my_bike.brake(25) => 0
