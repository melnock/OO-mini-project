class RecipeCard

attr_accessor :user, :recipe, :date, :rating
@@all = []

  def initialize(recipe, rating)
    @recipe = recipe
    @date = Time.now.to_i
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end

end
