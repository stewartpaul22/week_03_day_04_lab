require_relative('../db/sql_runner.rb')

class Movie

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @genre = options['genre']
    @rating = options['rating'].to_i
  end

  # create
  def save()
    sql = "INSERT INTO movies (title, genre, rating) VALUES ($1, $2, $3) RETURNING id"
    values = [@title, @genre, @rating]
    movie = SqlRunner.run(sql, values)
    @id = movie['id'].to_i
  end
  # read

  # update

  # delete

end
