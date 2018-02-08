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

binding.pry
nil
