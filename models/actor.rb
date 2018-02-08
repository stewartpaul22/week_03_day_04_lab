require_relative('../db/sql_runner.rb')

class Actor

  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @first_name = options['first_name']
    @last_name = options['last_name']
  end

  # create
  def save()
    sql = "INSERT INTO actors (first_name, last_name) VALUES ($1, $2) RETURNING id"
    values = [@first_name, @last_name]
    actor = SqlRunner.run(sql, values).first
    @id = actor['id'].to_i
  end
  # read
  def self.all()
    sql = "SELECT * FROM actors"
    values = []
    actors = SqlRunner.run(sql, values)
    return actors.map{|actor| Actor.new(actor)}
  end
  # delete
  def self.delete_all()
    sql = "DELETE FROM actors"
    values = []
    SqlRunner.run(sql, values)
  end

end
