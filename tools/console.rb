require_relative '../config/environment.rb'

user = User.new("joe")
next_user = User.new("jess")
third_user = User.new("john")

cookies = Recipe.new("cookies")
pasta = Recipe.new("pasta")
dumplings = Recipe.new("dumplings")
sandwich = Recipe.new("sandwich")
sauce = Recipe.new("sauce")

flour = Ingredient.new("flour")
eggs = Ingredient.new("eggs")
honey = Ingredient.new("honey")

a = user.add_recipe_card(cookies, 5)
b = user.add_recipe_card(pasta, 4)
c = user.add_recipe_card(dumplings, 2)
d = user.add_recipe_card(sauce, 5)
e = next_user.add_recipe_card(cookies, 4)
f = next_user.add_recipe_card(pasta, 3)
g = third_user.add_recipe_card(sandwich, 5)
h = third_user.add_recipe_card(cookies, 2)


allergy2 = user.declare_allergen(eggs)
allergy3 = user.declare_allergen(honey)
allergy = user.declare_allergen(flour)
allergy = next_user.declare_allergen(flour)
allergy = third_user.declare_allergen(flour)



binding.pry
