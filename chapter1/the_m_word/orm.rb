class Entity
  attr_reader :table, :ident

  def initilize(table, ident)
    @table = table
    @ident = ident
    Database.sql "INSERT INTO #{@table} (id) VLUES (#{@ident})"
  end

  def set(field, value)
    Database.sql "UPDATE #{@table} SET #{field} = #{value} WHERE id = #{@ident}"
  end

  def get(col)
    Database.sql "SELECT #{col} FROM #{@table} WHERE id = #{@ident}"
  end

end

class Movie < Entity
  def initilize(ident)
    super "movies", ident
  end

  def title
    get "title"
  end

  def title=(title)
    set "title", title
  end

  def director
    get "director"
  end

  def director=(director)
    set "director", director
  end
end


movie = Movie.new(1)
movie.title = "The M Word"
movie.director = "John McTiernan"
