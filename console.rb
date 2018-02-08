require('pry-byebug')
require_relative('models/actor.rb')
require_relative('models/movie.rb')
require_relative('models/casting.rb')

actor1 = Actor.new({'first_name' => 'Jeff', 'last_name' => 'Bridges'})
actor2 = Actor.new({'first_name' => 'Julie Ann', 'last_name' => 'Moore'})
actor3 = Actor.new({'first_name' => 'John', 'last_name' => 'Goodman'})
actor4 = Actor.new({'first_name' => 'Steve', 'last_name' => 'Buscemi'})
actor1.save()
actor2.save()
actor3.save()
actor4.save()

movie1 = Movie.new({'title' => 'The Big Lebowski', 'genre' => 'comedy', 'rating' => '9'})
movie2 = Movie.new({'title' => 'The Vanishing', 'genre' => 'crime drama', 'rating' => '8'})
movie3 = Movie.new({'title' => 'Arlington Road', 'genre' => 'crime thriller', 'rating' => '8'})
movie4 = Movie.new({'title' => 'Con Air', 'genre' => 'action', 'rating' => '5'})
movie5 = Movie.new({'title' => 'Magnolia', 'genre' => 'drama', 'rating' => '8'})
movie6 = Movie.new({'title' => 'Fallen', 'genre' => 'thriller', 'rating' => '8'})
movie1.save()
movie2.save()
movie3.save()
movie4.save()
movie5.save()
movie6.save()

binding.pry
nil
