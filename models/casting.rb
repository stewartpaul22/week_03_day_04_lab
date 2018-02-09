require_relative('../db/sql_runner.rb')

class Casting

  attr_accessor :fee

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
  def self.all()
    sql = "SELECT * FROM castings"
    values = []
    castings = SqlRunner.run(sql, values)
    return castings.map{|casting| Casting.new(casting)}
  end
  # delete
  def self.delete_all()
    sql = "DELETE FROM castings"
    values = []
    SqlRunner.run(sql, values)
  end

end
