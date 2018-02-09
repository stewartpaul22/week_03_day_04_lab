require('pry-byebug')
require_relative('../db/sql_runner.rb')

class Movie

  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @genre = options['genre']
    @rating = options['rating'].to_i
    @budget = options['budget'].to_i
  end

  # create
  def save()
    sql = "INSERT INTO movies (title, genre, rating, budget) VALUES ($1, $2, $3, $4) RETURNING id"
    values = [@title, @genre, @rating, @budget]
    movie = SqlRunner.run(sql, values).first
    @id = movie['id'].to_i
  end

  def actors()
    sql = "SELECT actors.* FROM actors INNER JOIN castings on actors.id = castings.actor_id WHERE castings.movie_id=$1"
    values = [@id]
    actors = SqlRunner.run(sql, values)
    return actors.map{|actor| Actor.new(actor)}
  end

  def update_budget()
    sql = "SELECT castings.fee FROM castings WHERE castings.movie_id=$1"
    values = [@id]
    fees = SqlRunner.run(sql, values)
    all_fees = fees.map{|fee| fee['fee'].to_i}
    total = all_fees.reduce(:+)
    @budget -= total
  end

  # read
  def self.all()
    sql = "SELECT * FROM movies"
    values = []
    movies = SqlRunner.run(sql, values)
    return movies.map{|movie| Movie.new(movie)}
  end
  # delete
  def self.delete_all()
    sql = "DELETE FROM movies"
    values = []
    SqlRunner.run(sql, values)
  end

end
