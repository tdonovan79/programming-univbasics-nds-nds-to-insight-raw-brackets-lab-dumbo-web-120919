$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
pp directors_database
def directors_totals(nds)
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
    movie_element
    #iterate through movies for each director
    while movie_element < director_database[director_element][:movies].length do
      #add gross of movie to director total
      director_total += director_database[director_element][:movies][movie_element]
      #increment movie iterator
      movie_element += 1
    end
    #create hash with director/total
    director_hash = {"#{director_database[director_element][:name]}": director_total}
    #push director hask to reult hash
    result << director_hash
    #increment director iterator
    director_element += 1
  end
  #return resultant hash
  return result
end
