# ASSESSMENT 5: Coding Critique with AI

# Use AI to learn about the following code.

# Based on your learning, reverse engineer a prompt that this code would satisfy.

# PROMPT: Calculate the total votes for each type of taco and put output the tally into a HASH.

# Add comments to each line to explain the code.

## We have an array that contains different type of tacos
taco_votes = ['fish taco', 'california burrito', 'Tacos Al Pastor', 'Carnitas tacos', 'California burrito', 'Fish taco', 'California Burrito', 'Fish Taco', 'Tacos de Barbacoa', 'tacos Al Pastor', 'fish taco', 'California burrito', 'fish taco', 'tacos al pastor', 'Carnitas tacos', 'Fish taco', 'tacos de barbacoa', 'fish taco', 'Carnitas Tacos', 'carnitas tacos', 'Fish Taco', 'fish taco']
## we are reducing the the array so that we can calculate the total vote for each taco
totals = taco_votes.reduce(Hash.new(0)) do |result, vote|
  ## we are making sure that its not case-sensitive by covnerting it to lowercase
  result[vote.downcase] += 1
  result
end

p totals
## this puts out the total number of votes

## reading the name of the methods they used can help us identify what they were trying to accomplish'
## seeing votes and results lets us know we are voting for something
## the downcase lets us know we are making sure its not case sensitive
##