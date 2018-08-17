require 'json'
require 'open-uri'

puts "Generate ingredients"

Dose.destroy_all
Ingredient.destroy_all
Cocktail.destroy_all

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = open(url).read
user = JSON.parse(user_serialized)["drinks"]

user. each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end

mojito = Cocktail.create(name: "Mojito", image: "https://cdn-elle.ladmedia.fr/var/plain_site/storage/images/elle-a-table/recettes-de-cuisine/mojito-549832/6706092-9-fre-FR/Mojito.jpg")
sex_on_the_bitch = Cocktail.create(name: "Sex on The Beach", image: "https://cache.marieclaire.fr/data/photo/w1000_c17/cuisine/i13_ratrap_img1/40694804.jpg")
pina_colada = Cocktail.create(name: "Pina Colada", image: "http://static1.villaschweppes.com/articles/1/31/@/66119-dfs-article_top-2.jpg")

puts "C'est fini"
