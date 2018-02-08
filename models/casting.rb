require_relative('../db/sql_runner.rb')

class Casting

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @movie_id = options['movie_id'].to_i
    @actor_id = options['actor_id'].to_i
    @fee = options['fee'].to_i
  end

end
