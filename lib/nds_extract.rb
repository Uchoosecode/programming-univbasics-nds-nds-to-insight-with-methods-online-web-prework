require 'pry'
require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  nds 
  result = {}
  row_index = 0 
  while row_index < nds.count do 
  nds[row_index]
  first_director_name = nds[0][:name]

directors_name = nds[row_index][:name]
  # The directors_name is a variable of all the directors in the nds.
  
result[directors_name] = 0 
# This takes the variable directors_name, adds it into the result hash and gives it a value of 0 as a counter.

movies = nds[row_index][:movies]
  # The movies variable show the names of all the movies.
  
element_index = 0 
 
  while element_index < movies.length
  result[directors_name] += movies[element_index][:worldwide_gross]
 
element_index += 1 
end

row_index += 1 

end
return result
 
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  row_index = 0 
  while row_index < director_data[:movies].length do 
   grosses = director_data[:movies][row_index][:worldwide_gross]
    
  grand_gross = 0 
p grosses
    element_index = 0 
  while element_index < grosses.length do
    
    grand_gross += grosses[element_index]
    
    
  
  element_index += 1 

end
p grand_gross
row_index += 1 
end

end

