require 'rest-client'
require 'json'
require 'pry'

def get_character_movies_from_api(character_name)
  #make the web request
  response_string = RestClient.get('http://www.swapi.co/api/people/')
  response_hash = JSON.parse(response_string)

  # iterate over the response hash to find the collection of `films` for the given
  #   `character`
  # collect those film API urls, make a web request to each URL to get the info
  #  for that film
  # return value of this method should be collection of info about each film.
  #  i.e. an array of hashes in which each hash reps a given film
  # this collection will be the argument given to `print_movies`
  #  and that method will do some nice presentation stuff like puts out a list
  #  of movies by title. Have a play around with the puts with other info about a given film.
end

def print_movies(films)
  # some iteration magic and puts out the movies in a nice list
end

def show_character_movies(character)
  films = get_character_movies_from_api(character)
  print_movies(films)
end

## BONUS

# that `get_character_movies_from_api` method is probably pretty long. Does it do more than one job?
# can you split it up into helper methods?
# 
# require 'rest-client'
# require 'json'
# require 'pry'
#
# def get_character_movies_from_api(character_name)
  #make the web request
  # response_string = RestClient.get('http://www.swapi.co/api/people/')
  # response_hash = JSON.parse(response_string)["results"]
  # iterate over the response hash to find the collection of `films` for the given
  #   `character`
  # movie_array = []
  # response_hash.each do |char|
  #   if char["name"] == character_name
  #     char["films"].each do |movie|
  #        movie_string = RestClient.get(movie)
  #        movie_hash = JSON.parse(movie_string)
  #        movie_array << movie_hash
  #        #binding.pry
  #      end
  #   end
  # collect those film API urls, make a web request to each URL to get the info
  #  for that film
  # end
  # return movie_array
  # return value of this method should be collection of info about each film.
  #  i.e. an array of hashes in which each hash reps a given film
  # this collection will sbe the argument given to `print_movies`
  #  and that method will do some nice presentation stuff like puts out a list
  #  of movies by title. Have a play around with the puts with other info about a given film.
# end
#
# def print_movies(films)
  # some iteration magic and puts out the movies in a nice list
#  get_character_movies_from_api(character_name)["title"].each do |title| puts "#{title}\n"
#   get_character_movies_from_api(films)
#   binding.pry
# end
#
# def show_character_movies(character)
#   films = get_character_movies_from_api(character)
#   print_movies(films)
# end

## BONUS

# that `get_character_movies_from_api` method is probably pretty long. Does it do more than one job?
# can you split it up into helper methods?
