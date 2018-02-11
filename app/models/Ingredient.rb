class Ingredient

  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.most_common_allergen
    ing_arr = Allergen.all.map{|ing| ing.ingredient}
    counted_ing = ing_arr.uniq.map{|el| [el.name, ing_arr.count(el)]}
    ugh = counted_ing.to_h
    ugh.max_by{|k,v| v}[0]
  end

end
