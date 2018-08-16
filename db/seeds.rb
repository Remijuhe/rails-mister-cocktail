puts "Generate ingredients"

lemon = Ingredient.create(name: "lemon")
ice = Ingredient.create(name: "ice")
mint_leaves = Ingredient.create(name: "mint leaves")

mojito = Cocktail.create(name: "Mojito")
sex_on_the_bitch = Cocktail.create(name: "Sex on The Bitch")
pina_colade = Cocktail.create(name: "Pina Colada")

Dose.create(description: "6 cL", cocktail_id: mojito[:id], ingredient_id: lemon[:id])

puts "C'est fini"
