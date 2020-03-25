$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

require 'pp'

def directors_totals(nds)
  #binding.pry
  index_dr = 0
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {}
  
  while index_dr<nds.length do
  puts nds[index_dr][:name]
  total = 0
  director = nds[index_dr][:name]
  movie = nds[index_dr][:movies]
  index_movies = 0
  
    while index_movies < movie.length do
      
      total = total + movie[index_movies][:worldwide_gross]
    index_movies += 1
    end
    result[director] = total
  index_dr +=1
  end
  
  
  
  
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  # result = {
  # }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  nil
  result
end
