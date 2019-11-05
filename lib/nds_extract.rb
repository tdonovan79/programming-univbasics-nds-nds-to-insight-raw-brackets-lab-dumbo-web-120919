$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
pp directors_database
def directors_totals(directors_database)
  #where totals are stored
  result = {
  }
  #director iterator
  director_element = 0
  #iterate through directors
  while director_element < directors_database.length do
    #create total for director
    director_total = 0
    #movie iterator
    movie_element = 0
    #iterate through movies for each director
    while movie_element < directors_database[director_element][:movies].length do
      #add gross of movie to director total
      director_total += directors_database[director_element][:movies][movie_element][:worldwide_gross]
      #increment movie iterator
      movie_element += 1
    end
    #add director/total hask to result hash
    result["#{directors_database[director_element][:name]}"] = director_total
    #increment director iterator
    director_element += 1
  end
  #return resultant hash
  return result
end
