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

url_mojito = "https://cdn-elle.ladmedia.fr/var/plain_site/storage/images/elle-a-table/recettes-de-cuisine/mojito-549832/6706092-9-fre-FR/Mojito.jpg"
mojito = Cocktail.create(name: "Mojito")
mojito.remote_image_url = url_mojito
mojito.save

puts "C'est fini"
