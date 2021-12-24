class Movie < ActiveRecord::Base
end

movie = Movie.create
movie.title = "Doctro Strange"
movie.title # => "Doctro Strange"
