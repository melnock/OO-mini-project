class User

attr_accessor :name
@@all = []

  def initialize (name)
    @name = name
    @@all <<self
  end

  def self.all
    @@all
  end

  def recipes
    rec = RecipeCard.all.select{|card| card.user == self}
    rec.map { |recipe| recipe.recipe }
  end

  def add_recipe_card(recipe, rating)
    rec = RecipeCard.new(recipe, rating)
    rec.user = self
  end

  def declare_allergen(ingredient)
      new_allergic = Allergen.new(ingredient)
      new_allergic.user = self
  end

  def allergens
    Allergen.all.select{|ingredient| ingredient.user == self}
  end

  def top_three_recipes
    RecipeCard.all.select{|card|
      card.user == self}.sort{|x,y|
        y.rating <=> x.rating}[0..2]
  end

  def most_recent_recipe
    RecipeCard.all.select{|card| card.user == self}.sort{|x,y| y.date <=> x.date}[0]
  end

end
