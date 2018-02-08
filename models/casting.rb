require_relative('../db/sql_runner.rb')

class Casting

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @movie_id = options['movie_id'].to_i
    @actor_id = options['actor_id'].to_i
    @fee = options['fee'].to_i
  end

  # create
  def save()
    sql = "INSERT INTO castings (movie_id, actor_id, fee) VALUES ($1, $2, $3) RETURNING id"
    values = [@movie_id, @actor_id, @fee]
    casting = SqlRunner.run(sql, values).first
    @id = casting['id'].to_i
  end
  # read

  # update

  # delete

end
