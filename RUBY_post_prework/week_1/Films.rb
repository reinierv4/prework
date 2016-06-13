require "imdb"



class MyMovie
  attr_accessor :title, :rating
  def initialize(title, rating)
    @title = title
    @rating = rating
  end

end

class Fondo
  def initialize(title)
    @title = title
  end
  def self.get_movies
    array_of_read_titles = (IO.readlines("movies.txt"))
    array_movies =[]
    array_of_read_titles.each do |read_titles|
      i = Imdb::Search.new(read_titles)
      film_title = i.movies.first.title
      film_rating = i.movies.first.rating.floor
      array_movies << MyMovie.new(film_title, film_rating)
    end

    array_movies.each do |my_movie|
      puts my_movie.title
      puts my_movie.rating
    end
  end
end

#--------------------------------------------
Fondo.get_movies


# if rating%2 == 0
#   rating.times do |note|
#     print note, "#"
#   end
# else
#   (rating - rating%2).times do |note|
#     print note, "#"
#   end
# end
