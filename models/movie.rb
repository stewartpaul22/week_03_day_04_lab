require_relative('../db/sql_runner.rb')

class Movie

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @genre = options['genre']
    @rating = options['rating'].to_i
  end

end
