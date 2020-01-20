$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  row_index = 0
  totals = {}

  while row_index < directors_database.length do
    director_name = directors_database[row_index][:name]
    totals[director_name] = 0
    movie_index = 0

    while movie_index < directors_database[row_index][:movies].length do
      totals[director_name] += directors_database[row_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end

    row_index += 1
  end

  totals
end