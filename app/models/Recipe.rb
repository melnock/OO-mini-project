class Recipe


  attr_accessor :name, :steps
  @@all = []
  def initialize(name)
    @@all << self
    @name = name
  end

  def self.all
    @@all
  end

  def self.most_popular
    card_arr = RecipeCard.all.map{|card| card.recipe}
    counted_card = card_arr.uniq.map{|el| [el.name, card_arr.count(el)]}
    ugh = counted_card.to_h
    ugh.max_by{|k,v| v}[0]

  end

  def users
    RecipeCard.all.select{|card| card.recipe == self}.map{|card| card.user}
  end

  def ingredients
    RecipeIngredient.all.select{|recipe| recipe.recipe == self}.map{|rec| rec.ingredient}
  end

  def allergens
    ingred = self.ingredients
    Allergen.all.select {|i| ingred.include?(i.ingredient)}
  end

  def add_ingredients(ingredient)
    ingred = RecipeIngredient.new(self, ingredient)
  end


end
